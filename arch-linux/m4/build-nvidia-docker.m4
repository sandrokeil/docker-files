include(`arch.m4')
include(`i-git.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm go libseccomp

AUR_ADD_USER() \
    AUR_DOWNLOAD(container, https://aur.archlinux.org/cgit/aur.git/snapshot/libnvidia-container.tar.gz) \
    MAKEPKG(container) \
    AUR_DOWNLOAD(toolkit, https://aur.archlinux.org/cgit/aur.git/snapshot/nvidia-container-toolkit.tar.gz) \
    MAKEPKG(toolkit) \
    AUR_DOWNLOAD(runtime, https://aur.archlinux.org/cgit/aur.git/snapshot/nvidia-container-runtime.tar.gz) \
    MAKEPKG(runtime) \
AUR_DEL_USER()

ENTRYPOINT ["/bin/bash"]
