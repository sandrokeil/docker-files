include(`arch.m4')

RUN pacman -Sy --noconfirm unrar \
    && pacman -Scc --noconfirm

ENTRYPOINT ["unrar"]