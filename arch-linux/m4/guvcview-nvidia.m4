include(`arch-nvidia.m4')

RUN pacman -Sy --noconfirm guvcview
ENTRYPOINT guvcview