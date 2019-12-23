include(`arch.m4')

RUN pacman -Sy --noconfirm imagemagick \
    && pacman -Scc --noconfirm
