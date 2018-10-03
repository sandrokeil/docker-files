include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm gconf gtk2 libnotify libxtst nss xdg-utils libxss

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/signal-desktop-bin.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["signal-desktop"]
