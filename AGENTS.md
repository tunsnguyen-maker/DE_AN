# Workspace: DE_AN

Materials-science research workspace (XRD analysis, CIF libraries, Quantum ESPRESSO runs), not a conventional code project. There is no package manifest, CI, or test suite for the repo itself — verification means running the relevant notebook or QE input and checking its outputs.

Host is `rongser1` (OMV/Debian 13); repo root is `/var/local/DE_AN`. Docs and saved notebook outputs still cite `/var/local/qe` (the former root, now gone) and `/workspace/qe-workspace` (a separate Vast VM). Treat those as historical: resolve paths relative to this repo and verify before running any command copied from a doc.

## Directory map

- `XRD/XRD_61028` = 24 h sample, `XRD/XRD_61102` = 48 h sample. `raw/` holds instrument exports plus `xrd_bao1.txt` (a digitized literature reference); `processed/` and `analysis/xrd_results/` are generated outputs. Don't edit `raw/`; regenerated outputs may show up as untracked/modified files.
- `HEMOF_DATABASE/` = reference CIF library organized by synthesis stage/category, plus `REFERENCES/*.csv` (COD/CCDC metadata). Reference data, not code.
- `QE/` = `pseudos/library/*.upf` and `pseudos/cutoffs.json`, `docs/` (QE 7.5 manual and a Vast GPU-build guide), and gitignored `qe-7.6-gpu/` source with an out-of-tree CMake build in `qe-7.6-gpu/build-cuda129/`. Don't commit the source or binaries.
- `projects/runtest1/` = QE smoke-test input/output pairs, an ASE notebook that builds a substituted spinel, and the local run recipe.
- `envs/xrd/` = gitignored Python 3.13 venv with NumPy/SciPy/pandas/Matplotlib/ASE/Jupyter. `downloads/` and `QE/scratch/` are scratch.
- `.opencode/agents/xrd.md` = chuyên gia XRD subagent; gọi bằng `@xrd`. Chỉ đọc `raw/`, ghi kết quả vào thư mục riêng.

## Python environment (mandatory)

- Môi trường Python mặc định và bắt buộc của dự án là `envs/xrd/bin/python` (ví dụ `envs/xrd/bin/python -m jupyter lab`). Không dùng `python`/`python3` của hệ thống vì thiếu NumPy/SciPy/Matplotlib/pandas.
- Host `rongser1` hiện **không có** `conda`/`mamba`, nên không dùng `conda run -n xrd ...` ở đây. Nếu sau này conda env `xrd` được cài đặt, có thể dùng `conda run -n xrd python ...` thay thế.
- Mọi script Python trong repo đều phải chạy qua một trong hai lệnh trên; không tự ý cài package hoặc đổi stack.

## Running the XRD notebooks

- Notebooks locate data by walking `Path.cwd()` and its parents for the sample folders, so start Jupyter from inside this repo (e.g. `XRD/`). Launching from `/` fails even though stored outputs display absolute paths.
- The per-sample notebooks write `processed/*_smoothed.xy` and comparison PNGs. `XRD/XRD_61028/analysis/xrd_tong_hop_61028_61102.ipynb` is the combined 24 h/48 h analysis and writes its CSV/PNG/PDF report set to `XRD/XRD_61028/analysis/xrd_results/`; re-running overwrites those generated files.

## XRD data handling rules (mandatory for the whole project)

- **Dữ liệu thô là bất biến.** Tuyệt đối không ghi đè, sửa, đổi tên hay xóa file trong `XRD/*/raw/` (kể cả `xrd_bao1.txt`). Chỉ đọc. Mọi kết quả xử lý, phổ sạch, đồ thị và báo cáo phải ghi vào thư mục riêng (mặc định `XRD/<sample>/analysis/xrd_agent_results/<timestamp>/` hoặc `XRD/analysis/xrd_agent_results/<timestamp>/`), không ghi đè `processed/` hay `analysis/xrd_results/`.
- **Header trước, parse sau.** Khi đọc `.txt`, `.xy`, `.asc`, `.csv`, luôn đọc/kiểm tra phần header/metadata của máy đo trước, xác định dòng bắt đầu dữ liệu, đơn vị và thứ tự cột; sau đó mới tách đúng 2 cột `2theta` và `intensity`. Không dùng `np.loadtxt` khi chưa kiểm tra header. Với file `.asc` của Rigaku phải bỏ qua các dòng metadata bắt đầu bằng `*`; với `*_Theta_2-Theta.txt` phải bỏ qua dòng comment bắt đầu bằng `#`.
- **Phổ tham chiếu `xrd_bao1.txt`** là dữ liệu số hóa từ tài liệu, `2theta` chưa sắp xếp và có điểm trùng: phải sắp xếp và gộp trung bình các điểm trùng trước khi đối chiếu; không trừ nền hay làm mượt phổ này.
- Quy trình số liệu chuẩn của `@xrd` (ALS `lam=1e5`, `p=0.01` → Savitzky–Golay `window_length=11/15`, `polyorder=3` → chuẩn hóa `[0,1]` hoặc `[0,1000]` → Pseudo-Voigt → Scherrer `λ=1.5406 Å` → Williamson–Hall → Pearson/Cosine/RMSE) được mô tả đầy đủ trong `.opencode/agents/xrd.md`. Mọi con số phải tính bằng `numpy`/`scipy`/`matplotlib`, không ước lượng bằng mắt.

## Running QE on this host

- Working GPU binary: `QE/qe-7.6-gpu/build-cuda129/bin/pw.x` — CMake build for the RTX 2060 (sm_75), NVHPC 25.9 HPC-X MPI, OpenACC+CUDA, GPU-aware MPI off. The binary path in `projects/runtest1/RUN-QE-GPU.md` is stale; input `pseudo_dir` values are stale too and should point at `QE/pseudos/library`.
- Load HPC-X at runtime, not just build time: `source /export/download/nvidia/hpc_sdk/Linux_x86_64/25.9/comm_libs/12.9/hpcx/hpcx-2.24/hpcx-init.sh && hpcx_load`, then add the NVHPC compilers and `$HPCX_HOME/ompi/bin` to `PATH` and set CUDA/math library paths as shown in `RUN-QE-GPU.md`.
- One GPU means one MPI rank; on this i5-13400F use `OMP_NUM_THREADS=12` with `taskset -c 0-11` to stay on P-cores. Give each run its own `outdir` and `prefix` (inputs use `restart_mode='from_scratch'`). Don't use `pw.x -h` as a smoke test — it waits for stdin. Confirm GPU use from `GPU acceleration is ACTIVE.` in the output plus `nvidia-smi`, never from a successful build alone.
- `QE/docs/QE-7.6-GPU-BUILD-VAST.md` targets a different machine (V100/cc70, NVHPC 25.7 + CUDA 12.9, in-tree `./configure` + `make all`). Don't mix its flags or paths with the local CMake build.

## Host and service operations

- Check `hostname` and `pwd` first; run scoped read-only diagnostics here instead of asking the user to paste output. Never print secrets or unfiltered container config. Ask before installing packages, changing stacks, restarting services, or moving/deleting data.
- Immich: ML and video transcoding are separate services. `immich-machine-learning` needs `libcuda.so.1` (`CUDAExecutionProvider` in logs); `immich-server` needs `libnvidia-encode.so.1`/`libnvcuvid.so.1` (verify NVENC log lines, since jobs can silently fall back to software). NVIDIA user-space libs must match the 550 driver from `trixie-backports`; after installing, restart `nvidia-cdi-refresh.service`, check `nvidia-ctk cdi list`, and recreate affected containers. Never move or delete files under Immich's `/data/library`; only generated thumbnails under `/data/thumbs` are regenerable.
- Jellyfin (Portainer `media-stack`) uses CDI `nvidia.com/gpu=all`, not `/dev/dri`. Hardware transcoding is on-demand, so verify actual playback from FFmpeg logs and prefer Direct Play when the client supports the format.
