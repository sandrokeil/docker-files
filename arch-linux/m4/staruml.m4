include(`arch.m4')
include(`i-multilib.m4') \
    && pacman -Sy --noconfirm libxss lib32-gconf lib32-nss fuse2 \
    && mkdir -p /opt \
    && curl -L http://staruml.io/download/releases/StarUML-3.0.2-x86_64.AppImage --output /opt/StarUML.AppImage \
    && chmod +x /opt/StarUML.AppImage \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/opt/StarUML.AppImage"]
