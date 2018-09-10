RUN pacman -Sy --needed --noconfirm sudo patch \
    && useradd builduser -m \
    && passwd -d builduser \
    && printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers