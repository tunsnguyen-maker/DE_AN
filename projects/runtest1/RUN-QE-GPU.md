# Chạy QE 7.6 bằng GPU và nhiều CPU thread

## Cấu hình máy hiện tại

- QE executable: `/var/local/qe/projects/qe-7.6-gpu/bin/pw.x`
- Input gốc: `1_pw.in`
- GPU: một NVIDIA GeForce RTX 2060, 6 GiB VRAM
- Build QE có CUDA/OpenACC, MPI và OpenMP
- CPU: Intel Core i5-13400F, 6 P-core / 12 logical CPU trên P-core, cộng
  4 E-core (tổng cộng 16 logical CPU)

Để dùng toàn bộ P-core mà không chia tải sang E-core, chạy **1 MPI rank và 12
OpenMP threads**, giới hạn affinity vào CPU 0-11. Các CPU này là 6 P-core cùng
hai logical thread mỗi core trên máy hiện tại. Giữ một MPI rank vì máy chỉ có
một GPU 6 GiB; nhiều MPI rank trên cùng GPU có thể làm tăng nhu cầu VRAM.

## Chạy với toàn bộ P-core

Chạy nguyên khối sau trong terminal. Input gốc không bị sửa; lệnh tạo một bản
riêng với thư mục scratch riêng để bắt đầu tính mới và không ghi đè dữ liệu lần
chạy trước.

```bash
cd /var/local/qe/projects/runtest1

NVHPC_ROOT=/export/download/nvidia/hpc_sdk/Linux_x86_64/25.9
export HPCX_HOME="$NVHPC_ROOT/comm_libs/12.9/hpcx/hpcx-2.24"
source "$HPCX_HOME/hpcx-init.sh"
hpcx_load

export PATH="$NVHPC_ROOT/compilers/bin:$HPCX_HOME/ompi/bin:$PATH"
export NVHPC_CUDA_HOME="$NVHPC_ROOT/cuda/12.9"
export NVCOMPILER_MATH_LIBS_HOME="$NVHPC_ROOT/math_libs/12.9"
export LD_LIBRARY_PATH="$NVHPC_ROOT/compilers/lib:$NVHPC_CUDA_HOME/lib64:$NVCOMPILER_MATH_LIBS_HOME/targets/x86_64-linux/lib:$HPCX_HOME/ompi/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

export OMP_NUM_THREADS=12
export OMPI_ALLOW_RUN_AS_ROOT=1
export OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1

mkdir -p /export/download/qe-tmp/runtest1-pcores
sed "/^[[:space:]]*outdir[[:space:]]*=/c\\   outdir = '/export/download/qe-tmp/runtest1-pcores'" \
  1_pw.in > 1_pw_2060_pcores.in

taskset -c 0-11 mpirun -np 1 \
  /var/local/qe/projects/qe-7.6-gpu/bin/pw.x \
  < 1_pw_2060_pcores.in > 1_pw_2060_pcores.out
```

Theo dõi tiến trình ở terminal khác:

```bash
tail -f /var/local/qe/projects/runtest1/1_pw_2060_pcores.out
nvidia-smi
```

Kết thúc `tail -f` bằng `Ctrl+C`; việc đó không dừng QE đang chạy ở terminal kia.
Kết quả được lưu trong `1_pw_2060_pcores.out`.

## Nếu muốn dùng cả P-core và E-core

Để thử cả 16 logical CPU, đổi `OMP_NUM_THREADS=12` thành `OMP_NUM_THREADS=16`
và affinity `taskset -c 0-11` thành `taskset -c 0-15`. Đổi tên scratch/input/
output tương ứng để không ghi đè kết quả P-core. So sánh thời gian thực tế:
QE dùng GPU nhiều, nên thêm các E-core không đảm bảo tính nhanh hơn.

Trong input hiện tại, `restart_mode='from_scratch'`, nên mỗi lần chạy bằng
lệnh trên bắt đầu lại từ đầu.
