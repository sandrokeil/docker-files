include(`macros.m4')
DONT_CHANGE()
FROM sandrokeil/archlinux:texlive

RUN pacman -Sy --noconfirm texstudio \
    && pacman -Scc --noconfirm

ENTRYPOINT ["texstudio"]