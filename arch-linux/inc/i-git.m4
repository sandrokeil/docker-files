RUN pacman -Sy --noconfirm git openssh vim gnome-keyring libsecret \
    && pacman -Scc --noconfirm
