include(`arch.m4')

RUN pacman -Sy --noconfirm p7zip \
    && pacman -Scc --noconfirm

ENTRYPOINT ["7z"]