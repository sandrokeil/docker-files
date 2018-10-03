RUN pacman -Sy --noconfirm llvm-libs

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/ungoogled-chromium.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["/usr/bin/chromium"]