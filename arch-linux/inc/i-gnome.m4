RUN pacman-key --init \
    && pacman -Sy --noconfirm archlinux-keyring \
    && pacman -Sy --noconfirm gnome-shell gnome-control-center gnome-tweak-tool \
    && pacman -Scc --noconfirm