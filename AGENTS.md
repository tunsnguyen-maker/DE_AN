# Server workspace

This workspace is opened through VS Code Remote-SSH on the OMV host `rongser1`.

For Docker, Immich, Portainer, storage, or GPU troubleshooting:

- Check `hostname` and `pwd` early to confirm the active terminal context.
- When the host is `rongser1`, use the available terminal to run relevant read-only diagnostics directly instead of asking the user to copy command output.
- Keep command output scoped to the issue. Do not print secrets from environment files or unfiltered container configuration.
- Ask before installing packages, changing stack configuration, restarting services, or deleting/moving data.

## Immich GPU troubleshooting notes

- Immich machine learning and video transcoding use separate services. Check and configure GPU access on `immich-machine-learning` for ML and on `immich-server` for video transcoding.
- GPU device visibility alone is not enough. Check that the host driver libraries are installed and visible inside each container: `libcuda.so.1` for CUDA ML, and `libnvidia-encode.so.1` / `libnvcuvid.so.1` for NVENC/NVDEC.
- On Debian, keep NVIDIA user-space library packages aligned with the installed driver version and repository channel. This OMV host uses Debian 13 with NVIDIA 550 from `trixie-backports`; use that backports channel for matching driver libraries rather than allowing APT to select the older stable build.
- After installing NVIDIA driver libraries, refresh CDI (`systemctl restart nvidia-cdi-refresh.service`), verify with `nvidia-ctk cdi list`, then recreate affected containers so the runtime injects the new libraries.
- Verify ML by checking for `CUDAExecutionProvider` in `immich_machine_learning` logs during an ML job. Verify transcoding by checking for `NVENC-accelerated encoding and decoding` and `Successfully encoded` in `immich_server` logs; use `nvidia-smi` during active work as an additional check.
- A transcoding job can silently fall back to software after GPU errors, so confirm the logs instead of treating a completed encode as proof that NVENC worked.
- Immich stores generated thumbnails under `/data/thumbs` and encoded videos under the `/data` upload storage. Missing generated thumbnails can be regenerated; a missing original under `/data/library` needs separate investigation. Do not manually move or delete files inside Immich's internal library.

## Server configuration notes (rongser1)

- Host is OMV on Debian GNU/Linux 13.7 (trixie), kernel `6.12.116+deb13-amd64`. At last check Docker Engine was 29.9.3 and Docker Compose was v5.7.0.
- CPU is Intel Core i5-13400F (16 logical CPUs); it has no Intel integrated GPU. RAM is 32 GiB (31 GiB reported); swap is 5.8 GiB.
- Motherboard is ASUS EX-B760M-V5 D4. It has two M.2 Key M sockets supporting 2242/2260/2280 PCIe 4.0 x4 NVMe drives. Storage inventory on 2026-11-11 showed no NVMe device: the 112 GB system SSD and both data disks are SATA.
- Storage at last check: 112 GB system disk (`/dev/sda`, root filesystem 103 GB); 5.5 TB ext4 data disk mounted at `/srv/dev-disk-by-uuid-f737b4e5-2912-4e64-bd21-ad81b4d78a87` and `/export/download`; 466 GB ext4 disk mounted at `/srv/dev-disk-by-uuid-247edce7-ee81-4442-871c-b1fd1bcecde9`.
- NVIDIA GPU is a GeForce RTX 2060 with 6 GiB VRAM. Host driver was 550.163.01 (CUDA 12.4); CDI devices were available as `nvidia.com/gpu=0`, the GPU UUID, and `nvidia.com/gpu=all`.
- Immich runs in Portainer project `immich_3`, Compose file `/data/compose/1/docker-compose.yml`. Both `immich_server` and `immich_machine_learning` use NVIDIA device requests (`driver: nvidia`, one GPU, capability `gpu`).
- Jellyfin runs from `ghcr.io/hotio/jellyfin:latest` in Portainer project `media-stack`. Stack file in the Portainer data volume: `/docker/docker_data/portainer/data/compose/6/docker-compose.yml` (inside Portainer: `/data/compose/6/docker-compose.yml`). Current service maps `nvidia.com/gpu=all` through CDI and no longer maps `/dev/dri`.
- Last runtime check found NVIDIA device nodes (`/dev/nvidia0`, `/dev/nvidiactl`, `/dev/nvidia-uvm`) inside Jellyfin. Jellyfin FFmpeg exposed CUDA and NVENC encoders including H.264, HEVC, and AV1. Configure NVIDIA NVENC in Jellyfin's transcoding settings and verify actual transcoding from FFmpeg logs; the GPU was idle at last `nvidia-smi` check.
- Jellyfin hardware transcoding is on-demand during playback when the client or playback settings require it; it does not transcode the whole library automatically. Prefer Direct Play when the client supports the media format. Ask before changing the Portainer stack or restarting/recreating services.
