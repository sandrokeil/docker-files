include(`arch-nvidia.m4')

RUN pacman -Sy --noconfirm krita \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/krita"]