include(`arch.m4')

RUN pacman -Sy --noconfirm dbus dbus-glib thunderbird \
    && pacman -Scc --noconfirm

ENTRYPOINT ["thunderbird"]
