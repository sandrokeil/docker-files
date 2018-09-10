include(`arch.m4')

RUN pacman -Sy --noconfirm openssh rsync \
    && pacman -Scc --noconfirm
