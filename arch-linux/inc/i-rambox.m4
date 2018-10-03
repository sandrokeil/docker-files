AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/sencha-cmd-6.tar.gz) \
    MAKEPKG(tmp) \
    AUR_DOWNLOAD(tmp2, https://aur.archlinux.org/cgit/aur.git/snapshot/rambox-bin.tar.gz) \
    MAKEPKG(tmp2) \
AUR_DEL_USER()

ENTRYPOINT ["rambox"]