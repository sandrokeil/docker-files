include(`arch.m4')

RUN pacman -Sy --noconfirm keybase bash curl gnupg openssh vim gnome-keyring libsecret \
    && pacman -Scc --noconfirm

