RUN echo "[multilib]" >> /etc/pacman.conf \
    && echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf \
    && pacman -Sly multilib