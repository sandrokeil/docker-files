include(`arch.m4')

RUN pacman -Sy --noconfirm simplescreenrecorder \
    && pacman -Scc --noconfirm

ENTRYPOINT ["simplescreenrecorder"]
