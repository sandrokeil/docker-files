include(`arch.m4')

RUN pacman -Sy --noconfirm openssl-1.0

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/robo3t-bin.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["robo3t"]