include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-nss fuse2

ENV RAMBOX_VERSION 0.7.3

RUN mkdir -p /opt \
    && curl -L https://github.com/ramboxapp/community-edition/releases/download/${RAMBOX_VERSION}/Rambox-${RAMBOX_VERSION}-linux-x86_64.AppImage --output /opt/rambox.AppImage \
    && chmod +x /opt/rambox.AppImage

ENTRYPOINT ["/opt/rambox.AppImage"]
