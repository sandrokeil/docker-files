RUN pacman -Sy --noconfirm libreoffice-still libreoffice-still-de libreoffice-still-en-gb mythes-de hunspell-de \
    && pacman -Scc --noconfirm

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/ttf-vista-fonts.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()
