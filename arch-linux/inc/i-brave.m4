RUN pacman -Sy --noconfirm nss libxss \
    && mkdir -p /opt/brave \
    && curl -L https://github.com/brave/brave-browser/releases/download/v1.11.84/brave-v1.11.84-linux-x64.zip | bsdtar -xf - -C /opt/brave

RUN chmod +x /opt/brave/brave

ENTRYPOINT ["/opt/brave/brave"]
