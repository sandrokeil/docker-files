RUN pacman -Syu --noconfirm chromium \
    && pacman -Scc --noconfirm

CMD ["/usr/bin/chromium"]