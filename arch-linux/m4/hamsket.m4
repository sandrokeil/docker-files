include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-nss fuse2

ENV HAMSKET_VERSION 0.6.3

RUN mkdir -p /opt \
    && curl -L https://github.com/TheGoddessInari/hamsket/releases/download/${HAMSKET_VERSION}/Hamsket-${HAMSKET_VERSION}.AppImage --output /opt/hamsket.AppImage \
    && chmod +x /opt/hamsket.AppImage

ENTRYPOINT ["/opt/hamsket.AppImage"]
