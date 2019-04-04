include(`macros.m4')
DONT_CHANGE()
FROM sandrokeil/archlinux:texlive

RUN pacman -Sy --noconfirm texstudio mythes-de hunspell-de \
    && pacman -Scc --noconfirm

ENTRYPOINT ["texstudio"]