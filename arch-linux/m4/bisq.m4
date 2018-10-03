include(`arch.m4')

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm jre10-openjdk

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/bisq-bin.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["/opt/Bisq/Bisq"]
