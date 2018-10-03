RUN pacman -Sy --noconfirm chromium \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/chromium"]