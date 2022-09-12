RUN pacman -Sy --noconfirm nss libxss \
    && mkdir -p /opt/brave \
    && curl -L https://github.com/brave/brave-browser/releases/download/v1.43.92/brave-browser-v1.43.92-linux-amd64.zip | bsdtar -xf - -C /opt/brave

RUN chmod +x /opt/brave/brave

ENTRYPOINT ["/opt/brave/brave"]
