include(`arch-nvidia.m4')

include(`i-multilib.m4') \
    && pacman -Syu --noconfirm unzip wine-staging winetricks playonlinux wine_gecko wine-mono lib32-libpulse lib32-nvidia-utils \
    && pacman -Scc --noconfirm

CMD ["playonlinux"]
