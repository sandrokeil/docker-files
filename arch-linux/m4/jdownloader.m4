include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm jre11-openjdk wget bash hicolor-icon-theme unzip shared-mime-info desktop-file-utils fontconfig ttf-dejavu p7zip unrar

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/phantomjs-bin.tar.gz) \
    MAKEPKG(tmp) \
    AUR_DOWNLOAD(tmp2, https://aur.archlinux.org/cgit/aur.git/snapshot/jdownloader2.tar.gz) \
    MAKEPKG(tmp2) \
AUR_DEL_USER()

ENTRYPOINT ["JDownloader"]
