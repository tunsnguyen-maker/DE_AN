# Building Quantum ESPRESSO 7.6 with NVIDIA GPUs

This guide builds the NVIDIA GPU-enabled QE 7.6 source in this workspace. It
follows the QE 7.5 user-guide workflow: run `./configure`, then `make all`.
The GPU-specific options come from the QE source's `README_GPU.md`.

## Current workspace

- QE source: `/workspace/qe-workspace/projects/qe-7.6-gpu`
- QE archive: `/workspace/qe-workspace/downloads/qe-7.6.tar.gz`
- Test input and output: `/workspace/qe-workspace/projects/runtest1`
- Pseudopotentials: `/workspace/qe-workspace/pseudos/library`
- Build outputs: `bin/` under the QE source

The current image already includes the NVIDIA HPC SDK (NVHPC 25.7 with CUDA
12.9); do not assume a fixed SDK version or download another one. GPU and CPU
resources can vary between instances. The expected GPU is a V100 (compute
capability 7.0, or `cc70`); verify the actual GPU and installed toolchain
before building. Adjust the paths below if the workspace is mounted elsewhere.

## 1. Check the GPU, driver, and toolchain

```bash
nvidia-smi
nvaccelinfo | grep -E 'CUDA Driver Version|Default Target|Compute Capability'
nvfortran --version
mpifort --showme:command
nproc
free -h
```

Confirm that the NVIDIA driver can see the GPU and that `nvfortran` and an MPI
wrapper backed by NVHPC are available. The expected Vast default, V100, uses
compute capability `70` (`cc70`); use the actual GPU's capability if the
instance differs. Match `--with-cuda-runtime` to the CUDA toolkit installed in
the image's HPC SDK and check that the host driver supports that runtime. A
successful compile alone does not prove that the GPU runtime works.

Record the CPU target reported by `nvfortran --version`. This build used
`skylake-avx512`; a binary built for that target may not run on a different CPU
that lacks the required instruction set. For containers intended for different
CPU models, choose a portable NVHPC CPU target and rebuild once.

## 2. Set up NVHPC and MPI

The image normally provides the compiler and MPI environment already. If these
commands work and the MPI wrapper selects `nvfortran`, there is no need to
download the SDK or manually set SDK paths:

```bash
command -v nvfortran
command -v mpif90
mpifort --showme:command
```

If the MPI wrapper is not available or does not select `nvfortran`, activate
the HPC-X environment provided by the image before continuing. Avoid assuming
a fixed SDK version or installation path. Once the wrappers are available, set
the QE compiler variables before configuring:

```bash
export CC=mpicc
export FC=mpif90
export F90=mpif90
```

Keep the HPC-X environment loaded when running QE as well as when building it;
it supplies runtime paths needed by MPI-linked executables.

## 3. Configure for NVIDIA GPU, MPI, and OpenMP

```bash
export QE_SRC=/workspace/qe-workspace/projects/qe-7.6-gpu
cd "$QE_SRC"
CUDA_VERSION=12.9 # Use the CUDA toolkit version installed in this image.

./configure \
  --prefix="$QE_SRC/install" \
  --with-gpu=cuda \
  --with-cuda-runtime="$CUDA_VERSION" \
  --with-cuda-cc=70 \
  --with-cuda-mpi=no \
  --enable-openmp \
  --with-scalapack=no
```

Set `CUDA_VERSION` to the CUDA toolkit version included in the image's HPC SDK.
If the instance does not have a V100, change `--with-cuda-cc=70` to the actual
GPU's compute capability. The selected options enable CUDA/OpenACC, MPI, and
OpenMP. CUDA-aware MPI is deliberately disabled: enable `--with-cuda-mpi=yes`
only if the selected MPI library is known to support CUDA-aware communication
and the workload benefits from it (most relevant to multi-GPU communication).
With `--with-cuda-mpi=no`, use multiple GPUs for separate, independent QE
calculations, assigning one GPU to each job. This configuration does not set up
one QE calculation to communicate across multiple GPUs.

Review the end of configure output for `configure: success` and
`Configured for compilation of parallel executables.` Check `make.inc` for
`-D__CUDA`, `-D__MPI`, `-mp`, the expected CUDA architecture/runtime, and
`CUDA_LIBS`.

## 4. Build QE

```bash
make -j"$(nproc)" all
```

`nproc` chooses jobs based on the CPUs available to the instance. If the
instance has limited RAM, use a smaller job count to avoid running out of
memory. Binaries are created in `bin/`; for example, `bin/pw.x`, `bin/ph.x`,
and `bin/cp.x`.

To keep build outputs out of the source tree, QE also supports CMake, but do
not configure with CMake and `./configure` in the same build directory. This
guide uses the documented `./configure` + `make all` route.

## 5. Verify the build and GPU execution

Confirm that the main executables exist:

```bash
ls -lh bin/pw.x bin/ph.x
```

Immediately after building, run the prepared
`/workspace/qe-workspace/projects/runtest1/1_pw.gpu-test.in` test for at most
five minutes. Its `outdir` and `pseudo_dir` must point to writable and existing
directories. Keep the simulation parameters unchanged when preparing the test
input, and confirm that `pseudo_dir` contains all six UPF files named in
`ATOMIC_SPECIES`.

Run the calculation from the QE source directory. For a single-GPU smoke test,
start with one MPI rank and one OpenMP thread; do not automatically use every
CPU as an MPI rank on one GPU. Tune ranks and threads for the actual workload
while keeping their product within the allocated CPU count. The five-minute
timeout sends an interrupt at the limit and force-stops an unresponsive run
shortly afterward:

```bash
QE_SRC=/workspace/qe-workspace/projects/qe-7.6-gpu
cd "$QE_SRC"
set -o pipefail
export OMP_NUM_THREADS=1
MPI_RANKS=1
timeout --signal=INT --kill-after=2s 5m \
  mpirun -np "$MPI_RANKS" ./bin/pw.x \
  -in /workspace/qe-workspace/projects/runtest1/1_pw.gpu-test.in \
  | tee /workspace/qe-workspace/projects/runtest1/1_pw.gpu-test.out
```

While it runs, use a second terminal to monitor GPU utilization:

```bash
nvidia-smi dmon -s u -d 1
```

Confirm both that the QE output reports the GPU is active and that GPU
utilization rises during the calculation:

```text
GPU acceleration is ACTIVE.
```

```bash
grep -F 'GPU acceleration is ACTIVE.' \
  /workspace/qe-workspace/projects/runtest1/1_pw.gpu-test.out
```

If the test reaches the five-minute limit, a timeout exit status is expected;
the log and GPU monitor still need to show that GPU calculation occurred.
The current test log reports `GPU acceleration is ACTIVE.` and progresses
through SCF iterations, but stops at iteration 24 without `JOB DONE.`. This
confirms GPU initialization and calculation progress, not completion or
convergence of the full calculation. The log also contains an Open MPI memory
binding warning; it is non-fatal in this run, but may affect performance.
If the program reports a CUDA driver/runtime error, compare the installed
driver, toolkit, and `--with-cuda-runtime` before rebuilding. A binary
containing CUDA support is not, by itself, proof that the GPU was used.

If startup prints an NVIDIA warning that another OpenMP runtime is present,
inspect the FFTW/OpenMP libraries selected by `configure` and make sure they
use a runtime compatible with NVHPC. Do not treat suppressing the warning as a
fix; verify the calculation before relying on mixed OpenMP execution.

For mixed MPI/OpenMP execution, keep the product of MPI ranks and OpenMP
threads within the CPU resources allocated to the job. Set
`OMP_NUM_THREADS` explicitly when launching calculations; for example, use
one MPI rank and eight OpenMP threads on an eight-core allocation.

Do not use `pw.x -h` as a smoke test: `pw.x` expects an input calculation and
may wait for standard input. Run a small valid input with an existing
pseudopotential instead.

## 6. Run independent calculations on multiple GPUs

The current instance has one GPU; use the following workflow when a future
instance has multiple GPUs. First identify the GPU indices:

```bash
nvidia-smi --query-gpu=index,name,compute_cap,memory.total --format=csv,noheader
```

Prepare one input file per calculation. Give each input a distinct `prefix` and
writable `outdir` so jobs cannot overwrite each other's scratch data. Keep
`pseudo_dir` pointed at the shared pseudopotential library. To run two
independent jobs concurrently, assign each process a different GPU with
`CUDA_VISIBLE_DEVICES`; each job below uses one MPI rank and eight OpenMP
threads as an example. Adjust thread counts to the CPU allocation, keeping the
total threads for all simultaneous jobs within the CPUs allocated to the
instance:

```bash
cd /workspace/qe-workspace/projects/qe-7.6-gpu
export OMP_NUM_THREADS=8

CUDA_VISIBLE_DEVICES=0 mpirun -np 1 ./bin/pw.x \
  -in /path/to/job1.in > /path/to/job1.out 2>&1 &
pid1=$!

CUDA_VISIBLE_DEVICES=1 mpirun -np 1 ./bin/pw.x \
  -in /path/to/job2.in > /path/to/job2.out 2>&1 &
pid2=$!

wait "$pid1"; status1=$?
wait "$pid2"; status2=$?
printf 'job1 exit=%s; job2 exit=%s\n' "$status1" "$status2"
```

`CUDA_VISIBLE_DEVICES` restricts each QE process to its assigned physical GPU;
inside each process that GPU is exposed as the visible device. Use distinct
input, output-log, `prefix`, and `outdir` values for every job. Monitor GPU
memory and utilization with `nvidia-smi` while the jobs run. Do not start more
jobs than the available GPUs unless intentionally sharing a GPU and its memory.

This is different from distributing one QE calculation across several GPUs.
That requires a CUDA-aware MPI library, a compatible QE configuration
(`--with-cuda-mpi=yes`), and a separate multi-GPU validation; the current build
uses `--with-cuda-mpi=no`.

## Vast instance defaults to verify

- Expected GPU: NVIDIA Tesla V100, compute capability 7.0 (`cc70`)
- NVIDIA HPC SDK: 25.7 in the current image; verify the installed version
- CUDA toolkit/runtime: 12.9 in the current image; verify before configuring
- CPU and RAM: vary by Vast instance; check with `nproc` and `free -h`
- CUDA-aware MPI: disabled
- OpenMP: enabled
- ScaLAPACK: disabled
- Multi-GPU use covered here: independent jobs, one assigned GPU per job
- Build command: `make -j"$(nproc)" all`, or fewer jobs when RAM is limited
- CPU target: current build uses `skylake-avx512`; rebuild with a portable
  target if the image must run on CPUs without that instruction set
