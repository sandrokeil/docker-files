include(`arch.m4')

RUN pacman -Sy --noconfirm evince \
    && pacman -Scc --noconfirm

ENTRYPOINT ["evince"]
