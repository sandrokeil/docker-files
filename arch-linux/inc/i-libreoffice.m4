RUN pacman -Syu --noconfirm libreoffice-still \
    && pacman -Scc --noconfirm

CMD ["libreoffice"]
