include(`arch-nvidia.m4')

include(`i-multilib.m4') \
    && pacman -Syu --noconfirm wine wine-gecko wine-mono lutris lib32-libpulse lib32-alsa-plugins lib32-nvidia-utils pciutils lib32-fontconfig lib32-libxml2 lib32-mpg123 lib32-lcms2 lib32-giflib lib32-libpng lib32-gnutls lib32-gst-plugins-base lib32-gst-plugins-good \
      lib32-primus_vk primus_vk lib32-vkd3d lib32-vulkan-icd-loader lib32-vulkan-validation-layers vkd3d vulkan-tools vulkan-validation-layers \
    && pacman -Scc --noconfirm

include(`i-multilib.m4') \
    && pacman -Syu --noconfirm vulkan-icd-loader iputils p7zip winetricks firefox sdl procps-ng \
    && pacman -Scc --noconfirm

# vulkan-intel lib32-vulkan-intel

RUN rm -rf /usr/local/lib && ln -s /usr/lib /usr/local/lib

ENTRYPOINT ["lutris"]
