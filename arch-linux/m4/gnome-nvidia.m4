include(`arch-nvidia.m4')
include(`i-gnome.m4')

#ENTRYPOINT ["dbus-run-session", "gnome-session"]
ENTRYPOINT ["gnome-session"]