include(`arch.m4')

RUN pacman -Sy --noconfirm dmidecode hardinfo \
    && pacman -Scc --noconfirm

CMD ["hardinfo"]