FROM sandrokeil/archlinux

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

RUN pacman -Syu --noconfirm nvidia nvidia-utils cuda nvidia-settings opencl-nvidia ocl-icd
