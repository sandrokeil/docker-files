include(`arch.m4')

RUN pacman -Sy --noconfirm gedit \
    && pacman -Scc --noconfirm

CMD ["gedit"]