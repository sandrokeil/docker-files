include(`arch-nvidia.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm steam lib32-libpulse lib32-alsa-plugins lib32-nvidia-utils pciutils lib32-fontconfig \
    && pacman -Scc --noconfirm

#ENV LD_PRELOAD /usr/lib32/libudev.so.1
#ENV STEAM_RUNTIME 0

RUN pacman -Sy --noconfirm steam-native-runtime lib32-libxml2 lib32-mpg123 lib32-lcms2 lib32-giflib lib32-libpng lib32-gnutls lib32-gst-plugins-base lib32-gst-plugins-good

ENV LD_LIBRARY_PATH /usr/lib32

ENTRYPOINT ["steam-runtime"]
