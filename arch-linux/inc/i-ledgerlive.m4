include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-gconf lib32-nss

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/ledger-live-bin.tar.gz) \
    AUR_PKGBUILD_SED(tmp, "s/pkgver=1.1.11/pkgver=1.2.0/g") \
    AUR_PKGBUILD_SED(tmp, "s/2e55f7b0daa0eaa4d510134d440ec5ed0e78bdd55d7423b6368a8e17033f99e11e114e429760b3c08a33690718c899a26c4946cb5f59c34b1b5e5fdbb4264f6c/e4c14249e6767011bec97d0cf56dc3138af9b99e68e61d46d1b8f8a0aa017ea569385832ed422d3db7259822849084a318bbb6cb5fd2c0035b94a14bcfd46dc5/g") \
    MAKEPKG(tmp) \
AUR_DEL_USER() \
include(`i-udev-usb.m4')

ENTRYPOINT ["ledger-live-desktop"]
