RUN pacman -Syu --noconfirm opera \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/usr/bin/opera"]
