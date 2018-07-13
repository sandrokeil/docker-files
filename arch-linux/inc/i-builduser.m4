RUN pacman -Syu --needed --noconfirm sudo \
    && useradd builduser -m \
    && passwd -d builduser \
    && printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers