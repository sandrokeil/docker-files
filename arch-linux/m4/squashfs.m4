include(`arch.m4')

RUN pacman -Sy --noconfirm squashfs-tools \
    && pacman -Scc --noconfirm

ENTRYPOINT ["sh"]
