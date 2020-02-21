include(`arch.m4')

RUN pacman -Syu --noconfirm librsvg \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/rsvg-convert"]
