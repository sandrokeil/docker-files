include(`arch.m4')

RUN pacman -Sy --noconfirm calibre evince \
    && pacman -Scc --noconfirm

ENTRYPOINT ["calibre"]