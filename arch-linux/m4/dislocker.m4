include(`arch.m4')

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/dislocker.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["/bin/bash"]
