include(`macros.m4')
DONT_CHANGE()
FROM sandrokeil/archlinux:texlive

RUN pacman -Sy --noconfirm texstudio mythes-de hunspell-de languagetool poppler texlive-langgreek ffcall \
    && pacman -Scc --noconfirm

ENTRYPOINT ["texstudio"]
