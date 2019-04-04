include(`arch-nvidia.m4')

RUN mkdir -p /opt/brave \
    && curl -L https://github.com/brave/brave-browser/releases/download/v0.60.15/brave-v0.60.15-linux-x64.zip | bsdtar -xf - -C /opt/brave

RUN chmod +x /opt/brave/brave

RUN pacman -Sy --noconfirm nss libxss

ENTRYPOINT ["/opt/brave/brave"]
