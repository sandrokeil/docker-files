include(`macros.m4')
DONT_CHANGE()
FROM sandrokeil/archlinux:texlive

RUN pacman -Syu --noconfirm texstudio mythes-de hunspell-de languagetool poppler \
    && pacman -Scc --noconfirm

ENTRYPOINT ["texstudio"]