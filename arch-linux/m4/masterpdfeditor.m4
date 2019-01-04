include(`arch.m4')

RUN pacman -Sy --noconfirm qt5-base qt5-svg

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/masterpdfeditor-free.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["masterpdfeditor4"]
