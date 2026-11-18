# Building Quantum ESPRESSO 7.6 on a Vast NVIDIA GPU instance

Agent runbook for the Vast instance created with:

```text
nvcr.io/nvidia/nvhpc:25.7-devel-cuda12.9-ubuntu24.04
```

The image and on-start script give you a known starting point, **not** a fixed
configuration. The instance normally has one or more NVIDIA V100 GPUs, but the
actual GPU count, driver, CPU, RAM, MPI wrapper and toolchain paths must be
discovered before building. Record every discovered value in the run log; do
not copy stale paths from other docs in the repo.

This guide keeps the QE 7.5 user-guide route (`./configure` then `make all`);
GPU-specific flags follow the QE source's `README_GPU.md`.

## 0. What the on-start script already did — path map

| Item | Expected path | Must verify |
|---|---|---|
| Project repo (clone) | `/workspace/DE_AN` | `.git` exists; clone succeeded |
| QE source (release tarball, `tar --strip-components=1`) | `/workspace/q-e` | `/workspace/q-e/configure` exists |
| GPU test input | `/workspace/DE_AN/runtest1/1_pw_core.in` | canonical original after `make`; treat as read-only template, create a new file with changed paths; do **not** assume `projects/runtest1/` |
| Pseudopotentials | `/workspace/DE_AN/QE/pseudos/library` | all UPF files named in `ATOMIC_SPECIES` exist |
| Build outputs | `/workspace/q-e/bin/` | `pw.x`, `ph.x` exist after build |
| Generated runs/logs | `/workspace/qe-runs/<timestamp>/` | created by you; never overwrite the repo input |

Notes about the on-start script:

- It disables automatic tmux on SSH (`sed -i '/tmux/d' ...`, `~/.no_auto_tmux`).
  Do not rely on tmux. Use a second SSH session or a background process for
  GPU monitoring.
- It installs `cmake`, `git`, `build-essential`, `wget`, `tar`. `cmake` being
  available does not mean you should mix CMake and `./configure` in the same
  build directory (see §4).
- It deletes the downloaded tarball after extraction. If `/workspace/q-e` is
  empty or missing `configure`, re-download the release asset or stop and
  report — do not build from a half-extracted tree.

## 1. Discovery first — run and record all of this

```bash
hostname; pwd; date -u
ls -ld /workspace /workspace/DE_AN /workspace/q-e /workspace/DE_AN/QE/pseudos/library
find /workspace/DE_AN -path '*/runtest1/*.in' -type f -print
ls -l /workspace/DE_AN/runtest1/1_pw_core.in   # canonical template after build

nvidia-smi
nvidia-smi --query-gpu=index,name,compute_cap,memory.total,driver_version --format=csv,noheader
command -v nvfortran nvcc mpicc mpif90 mpifort || true
nvfortran --version
nvcc --version
mpifort --showme:command
nproc
free -h
df -h /workspace
```

Derive the build parameters from the recorded output:

- `CUDA_VERSION` = major.minor reported by `nvcc --version` (the image tag says
  `12.9`, but verify). If `nvcc` is not on `PATH`, look under the NVHPC SDK
  root, e.g. `find /opt/nvidia/hpc_sdk -path '*/cuda/*/bin/nvcc'`.
- `CUDA_CC` = GPU compute capability with the dot removed: `7.0` -> `70`.
  With mixed GPU types, use the lowest capability that must be supported, or
  stop and ask — one QE build targets one CUDA architecture here.
- `CPU_TARGET` = the target printed by `nvfortran --version` (the old build
  used `skylake-avx512`). Record it; see the portability warning in §7.
- Driver must support the selected CUDA runtime. A compile success alone does
  not prove the GPU runtime works.

If the GPU is not V100/cc70, or the SDK/CUDA version differs, change the
corresponding flag below. Do not silently keep `70` or `12.9`.

## 2. Set up NVHPC and MPI

The NVHPC devel image normally provides the compilers and an HPC-X MPI wrapper.
Check before changing anything:

```bash
command -v nvfortran mpicc mpif90 mpifort
mpifort --showme:command   # must resolve to an NVHPC-backed compiler (nvfortran)
```

If the wrappers are missing or do **not** select `nvfortran`, activate HPC-X
from the installed SDK. Do not hard-code an SDK version or install path —
discover it:

```bash
NVHPC_ROOT=$(dirname "$(dirname "$(dirname "$(readlink -f "$(command -v nvfortran)")")")")
HPCX_INIT=$(find "$NVHPC_ROOT" /opt/nvidia -name hpcx-init.sh 2>/dev/null | head -n1)
[ -n "$HPCX_INIT" ] || { echo 'hpcx-init.sh not found' >&2; exit 1; }
source "$HPCX_INIT"
hpcx_load

export PATH="$NVHPC_ROOT/compilers/bin:$HPCX_HOME/ompi/bin:$PATH"
export NVHPC_CUDA_HOME=$(dirname "$(dirname "$(readlink -f "$(command -v nvcc)")")")
export NVCOMPILER_MATH_LIBS_HOME="$NVHPC_ROOT/math_libs/$(basename "$NVHPC_CUDA_HOME")"
export LD_LIBRARY_PATH="$NVHPC_ROOT/compilers/lib:$NVHPC_CUDA_HOME/lib64:$NVCOMPILER_MATH_LIBS_HOME/targets/x86_64-linux/lib:$HPCX_HOME/ompi/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
```

Vast containers usually run as root, so allow Open MPI root execution:

```bash
export OMPI_ALLOW_RUN_AS_ROOT=1
export OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1
```

Set the QE compiler variables and **keep this environment loaded when running
QE**, not only while building: HPC-X supplies runtime paths for MPI-linked
executables.

```bash
export CC=mpicc
export FC=mpif90
export F90=mpif90
```

## 3. Configure for CUDA + MPI + OpenMP

```bash
export QE_SRC=/workspace/q-e
cd "$QE_SRC"

CUDA_VERSION=12.9          # replace with the value discovered in §1
CUDA_CC=70                 # replace with the value discovered in §1

./configure \
  --prefix="$QE_SRC/install" \
  --with-gpu=cuda \
  --with-cuda-runtime="$CUDA_VERSION" \
  --with-cuda-cc="$CUDA_CC" \
  --with-cuda-mpi=no \
  --enable-openmp \
  --with-scalapack=no
```

`--with-cuda-mpi=no` is deliberate: CUDA-aware MPI is off, so one QE
calculation is **not** distributed over several GPUs. Multiple GPUs are used
as independent jobs (§6). Enable `--with-cuda-mpi=yes` only after verifying
that the selected MPI supports CUDA-aware communication and the workload
needs it, and then validate multi-GPU separately.

Check the end of the configure output for `configure: success` and
`Configured for compilation of parallel executables.` Then inspect `make.inc`:

```bash
grep -E -- '-D__CUDA|-D__MPI|-mp|CUDA|NVHPC|nvfortran' make.inc
```

Expected: `-D__CUDA`, `-D__MPI`, `-mp`, the discovered CUDA architecture and
runtime, and non-empty `CUDA_LIBS`. Stop and report if any are missing.

## 4. Build

```bash
cd "$QE_SRC"
JOBS=$(nproc)
RAM_GB=$(free -g | awk '/^Mem:/{print $2}')
if [ -n "$RAM_GB" ] && [ "$RAM_GB" -gt 0 ] && [ $((RAM_GB / 2)) -lt "$JOBS" ]; then
  JOBS=$((RAM_GB / 2))
fi
[ "$JOBS" -lt 1 ] && JOBS=1
make -j"$JOBS" all
ls -lh bin/pw.x bin/ph.x
```

`nproc` can be large on Vast while RAM is limited; the throttle above avoids
out-of-memory kills. Lower `JOBS` further if compilation is swapped or killed.

QE also supports an out-of-tree CMake build, but **never** configure with
CMake and `./configure` in the same build directory. This guide uses the
`./configure` + `make all` route; binaries land in `/workspace/q-e/bin/`.

## 5. Prepare and run the 3-minute single-GPU smoke test

After `make`, `/workspace/DE_AN/runtest1/1_pw_core.in` is the canonical
original input. Treat it as read-only: create a **new** file from it and change
only `outdir`, `prefix` and `pseudo_dir`. Keep every simulation parameter
(`ecutwfc`, k-points, positions, spin, etc.) unchanged and verify the diff.

```bash
RUN_ROOT=/workspace/qe-runs/$(date +%Y%m%d-%H%M%S)
mkdir -p "$RUN_ROOT/scratch"

IN_SRC=/workspace/DE_AN/runtest1/1_pw_core.in
[ -f "$IN_SRC" ] || { echo 'canonical 1_pw_core.in not found' >&2; exit 1; }
PSEUDO_DIR=/workspace/DE_AN/QE/pseudos/library
[ -d "$PSEUDO_DIR" ] || { echo 'pseudo_dir missing' >&2; exit 1; }
SMOKE_IN="$RUN_ROOT/1_pw_core_3m.in"

sed \
  -e "s|^[[:space:]]*outdir[[:space:]]*=.*|   outdir           = '$RUN_ROOT/scratch'|" \
  -e "s|^[[:space:]]*pseudo_dir[[:space:]]*=.*|   pseudo_dir       = '$PSEUDO_DIR'|" \
  -e "s|^[[:space:]]*prefix[[:space:]]*=.*|   prefix           = 'HEMMO_Spinel_3m'|" \
  "$IN_SRC" > "$SMOKE_IN"

diff -u "$IN_SRC" "$SMOKE_IN"   # expect exactly 3 changed lines: outdir, pseudo_dir, prefix
```

If `diff` shows anything other than those three `&CONTROL` lines, stop and
fix the template handling before running.

Verify every UPF named in `ATOMIC_SPECIES` exists before launching (the
current input uses six: Mn, Ni, Fe, Co, Cu, O):

```bash
MISSING=$(awk '/^ATOMIC_SPECIES/{f=1;next} /^K_POINTS/{f=0} f&&NF>=3{print $3}' "$SMOKE_IN" \
  | while read -r u; do [ -f "$PSEUDO_DIR/$u" ] || echo "$u"; done)
[ -z "$MISSING" ] || { printf 'MISSING UPF: %s\n' "$MISSING" >&2; exit 1; }
```

Do not guess a different pseudopotential; fix the path or report the missing
UPF.

Run from the QE source directory with **one MPI rank and one OpenMP thread**,
using a **3-minute** timeout. The GPU monitor goes to the background because
tmux is disabled:

```bash
cd "$QE_SRC"
export OMP_NUM_THREADS=1
nvidia-smi dmon -s u -d 1 > "$RUN_ROOT/dmon.log" 2>&1 &
DMON_PID=$!
set -o pipefail
timeout --signal=INT --kill-after=2s 3m \
  mpirun -np 1 ./bin/pw.x -in "$SMOKE_IN" \
  2>&1 | tee "$RUN_ROOT/smoke.out"
STATUS=$?
kill "$DMON_PID" 2>/dev/null || true
printf 'smoke exit=%s\n' "$STATUS"
```

Acceptance criteria — both are required:

```bash
grep -F 'GPU acceleration is ACTIVE.' "$RUN_ROOT/smoke.out"
# dmon columns with -s u: gpu index, sm%, mem%, enc%, dec% -> check sm% > 0
awk 'NR>1 && ($2+0)>0 {print; exit}' "$RUN_ROOT/dmon.log"
```

Interpretation of the 3-minute limit:

- A timeout exit status is expected if the test reaches 3 minutes; the log
  and `dmon.log` still need to show that GPU calculation occurred. Record the
  last SCF iteration reached.
- The historical longer Vast log reports `GPU acceleration is ACTIVE.` and
  progresses through SCF iterations but stops at iteration 24 **without
  `JOB DONE.`**. With a 3-minute cap it may stop earlier. Either way this
  confirms GPU initialization and progress, **not** completion or convergence
  of the full calculation. Do not report it as converged.
- The log may contain an Open MPI memory-binding warning. It was non-fatal in
  that run, but may affect performance; note it, do not hide it.
- If a CUDA driver/runtime error appears, compare the installed driver,
  toolkit and `--with-cuda-runtime` before rebuilding.

## 6. One or more V100s: independent jobs, one GPU per job

This is now the normal case, not a future-only scenario. With
`--with-cuda-mpi=no`, assign one GPU per independent calculation via
`CUDA_VISIBLE_DEVICES`; give every job its own `prefix`, `outdir` and log.
Keep `MPI ranks x OpenMP threads` within the CPU allocation across **all**
simultaneous jobs.

```bash
cd "$QE_SRC"
GPU_IDS=$(nvidia-smi --query-gpu=index --format=csv,noheader)
NGPU=$(printf '%s\n' "$GPU_IDS" | grep -c .)
THREADS=$(( $(nproc) / NGPU )); [ "$THREADS" -lt 1 ] && THREADS=1
export OMP_NUM_THREADS="$THREADS"

PIDS=""; LABELS=""
for gid in $GPU_IDS; do
  tag=$(printf 'gpu%02d' "$gid")
  d="$RUN_ROOT/$tag"; mkdir -p "$d/scratch"
  sed \
    -e "s|^[[:space:]]*outdir[[:space:]]*=.*|   outdir = '$d/scratch'|" \
    -e "s|^[[:space:]]*pseudo_dir[[:space:]]*=.*|   pseudo_dir = '$PSEUDO_DIR'|" \
    -e "s|^[[:space:]]*prefix[[:space:]]*=.*|   prefix = 'qe_$tag'|" \
    "$RUN_ROOT/1_pw_core_3m.in" > "$d/job.in"
  CUDA_VISIBLE_DEVICES="$gid" timeout --signal=INT --kill-after=2s 3m \
    mpirun -np 1 ./bin/pw.x -in "$d/job.in" \
    > "$d/job.out" 2>&1 &
  PIDS="$PIDS $!"; LABELS="$LABELS $tag"
done

i=0
for pid in $PIDS; do
  wait "$pid"; st=$?
  i=$((i+1)); label=$(printf '%s\n' "$LABELS" | awk -v n="$i" 'NR==n{print $1}')
  printf '%s exit=%s\n' "$label" "$st"
done
```

The `timeout ... 3m` wrapper keeps these validation jobs bounded like the
smoke test; remove it for production runs. Use one MPI rank per GPU. Do not
start more jobs than available GPUs unless intentionally sharing a GPU and its
memory. Monitor with `nvidia-smi` while they run and check each `job.out` for
`GPU acceleration is ACTIVE.`.

This is different from splitting one QE calculation over several GPUs: that
needs CUDA-aware MPI, `--with-cuda-mpi=yes`, and a separate multi-GPU
validation. The current build does not provide it.

## 7. Known and possible failures — keep these checks

- **Successful compile != GPU used.** Always confirm the exact line
  `GPU acceleration is ACTIVE.` in the output *and* rising utilization in
  `nvidia-smi dmon` / `nvidia-smi`. A binary containing CUDA support is not by
  itself proof that the GPU ran.
- **Never use `pw.x -h` as a smoke test.** `pw.x` expects a calculation input
  and may wait forever on stdin. Run a small valid input with existing UPFs.
- **3-minute smoke timeout / no `JOB DONE.`** — expected; the historical
  longer log stopped at iteration 24, a 3-minute run can stop earlier. Report
  as "GPU initialized and progressing", not converged.
- **Wrong smoke input** — derive it from `runtest1/1_pw_core.in` and use
  `diff -u` to confirm only `outdir`, `prefix` and `pseudo_dir` changed; never
  run the original file with its stale paths.
- **Open MPI memory-binding warning** — non-fatal so far, may hurt performance.
  Record it.
- **"another OpenMP runtime is present" warning at startup** — inspect the
  FFTW/OpenMP libraries selected by `configure` and ensure they use a runtime
  compatible with NVHPC. Suppressing the warning is not a fix; verify the
  calculation before relying on mixed OpenMP execution.
- **CPU target portability** — the old binary targeted `skylake-avx512`; it may
  not run on a CPU without that instruction set. If the image must run on
  other CPU models, rebuild with a portable NVHPC target (e.g. `-tp=generic`)
  and re-validate GPU execution.
- **CUDA driver/runtime mismatch** — compare driver, toolkit and
  `--with-cuda-runtime` before rebuilding; do not just re-run the same config.
- **Out of memory during `make`** — lower `JOBS` (§4).
- **Missing UPF / stale paths** — docs in this repo still cite
  `/var/local/qe`, `/workspace/qe-workspace` and `projects/runtest1/`; the
  actual repo layout here is `/workspace/DE_AN` + `runtest1/`. Discover and
  verify paths instead of copying them.
- **tmux disabled by on-start** — use a second session or background monitor.
- **MPI as root** — set the two `OMPI_ALLOW_RUN_AS_ROOT*` variables (§2) or
  `mpirun` refuses to start.

## 8. Final report checklist

Return: `hostname`, GPU list/compute capability/driver, NVHPC + CUDA versions,
CPU target, `nproc`/RAM, `CUDA_VERSION`, `CUDA_CC`, `make.inc` evidence,
`bin/pw.x` size, the `diff -u` showing only the 3 path lines changed from
`1_pw_core.in`, the 3-minute smoke-test exit status and last SCF iteration
reached, `GPU acceleration is ACTIVE.` line, GPU-utilization evidence, whether
`JOB DONE.` appeared, and every warning above that occurred. Mark GPU
execution as verified only if both log and utilization evidence are present.

## Vast instance defaults to verify (not to assume)

- Image: `nvcr.io/nvidia/nvhpc:25.7-devel-cuda12.9-ubuntu24.04`; verify actual versions.
- GPU: one or more NVIDIA V100, compute capability 7.0 (`cc70`); verify count and capability.
- CUDA-aware MPI: disabled (`--with-cuda-mpi=no`).
- OpenMP: enabled; ScaLAPACK: disabled.
- Multi-GPU use: independent jobs with one assigned GPU each.
- Smoke test: `1_pw_core.in` template, new file with only path/prefix changes, 3-minute timeout, 1 MPI rank / 1 OpenMP thread.
- Build: `make -j"$JOBS" all` with `JOBS` throttled by CPU/RAM; do not mix with CMake in the same tree.
- CPU target: previously `skylake-avx512`; rebuild portable if the image must run on other CPUs.