include(`arch.m4')

RUN pacman -Sy --noconfirm icu inkscape \
    && pacman -Scc --noconfirm

ENTRYPOINT ["inkscape"]