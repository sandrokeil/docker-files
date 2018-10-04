include(`arch.m4')

RUN pacman -Sy --noconfirm pandoc cmark texlive-core

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/ghostwriter.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["ghostwriter"]