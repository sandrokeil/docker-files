RUN pacman -Sy --noconfirm firefox \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/firefox"]