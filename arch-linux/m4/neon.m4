include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-nss fuse2

ENV NEON_VERSION 2.1.0

RUN mkdir -p /opt \
    && curl -L https://github.com/CityOfZion/neon-wallet/releases/download/${NEON_VERSION}/Neon-${NEON_VERSION}-x86_64.Linux.AppImage --output /opt/neon.AppImage \
    && chmod +x /opt/neon.AppImage \
include(`i-udev-usb.m4')

ENTRYPOINT ["/opt/neon.AppImage"]
