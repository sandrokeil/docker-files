include(`arch.m4')

RUN pacman -Sy --noconfirm thunderbird \
    && pacman -Scc --noconfirm

ENTRYPOINT ["thunderbird"]
