include(`arch-nvidia.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm unzip \
        wine-staging \
        winetricks \
        playonlinux \
        wine_gecko wine-mono \
        lib32-libpulse \
        lib32-alsa-plugins \
        lib32-nvidia-utils \
        libwbclient \
        vulkan-icd-loader \
        lib32-vulkan-icd-loader \
        lib32-libxml2 \
        lib32-mpg123 \
        lib32-lcms2 \
        lib32-giflib \
        lib32-libpng \
        lib32-gnutls \
        lib32-gst-plugins-base \
        lib32-gst-plugins-good \
        lib32-nvidia-libgl \
        lib32-nvidia-utils

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/dxvk-bin.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["playonlinux"]
