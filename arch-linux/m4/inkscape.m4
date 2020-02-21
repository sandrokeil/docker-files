include(`arch.m4')

RUN pacman -Sy --noconfirm icu inkscape librsvg \
    && pacman -Scc --noconfirm

ENTRYPOINT ["inkscape"]
