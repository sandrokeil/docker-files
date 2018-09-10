include(`arch.m4')

RUN pacman -Sy --noconfirm dnsutils \
    && pacman -Scc --noconfirm
