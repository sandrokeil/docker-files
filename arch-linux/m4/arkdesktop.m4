include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-gconf lib32-nss

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/ark-desktop.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER() \
include(`i-udev-usb.m4')

ENTRYPOINT ["arkclient"]
