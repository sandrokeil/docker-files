include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-gconf lib32-nss fuse2

ENV LEDGER_VERSION 1.2.5

RUN mkdir -p /opt \
    && curl -L https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v${LEDGER_VERSION}/ledger-live-desktop-${LEDGER_VERSION}-linux-x86_64.AppImage --output /opt/ledger-live.AppImage \
    && chmod +x /opt/ledger-live.AppImage \
include(`i-udev-usb.m4')

ENTRYPOINT ["/opt/ledger-live.AppImage"]
