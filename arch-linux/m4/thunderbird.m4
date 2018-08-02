include(`arch.m4')

RUN pacman -Syu --noconfirm thunderbird \
    && pacman -Scc --noconfirm

ENTRYPOINT ["thunderbird"]
