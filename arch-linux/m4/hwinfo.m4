include(`arch.m4')

RUN pacman -Syu --noconfirm dmidecode hardinfo \
    && pacman -Scc --noconfirm

CMD ["hardinfo"]