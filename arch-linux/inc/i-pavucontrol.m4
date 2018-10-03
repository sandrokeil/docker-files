RUN pacman -Sy --noconfirm dbus pavucontrol \
    && pacman -Scc --noconfirm

ENTRYPOINT ["pavucontrol"]