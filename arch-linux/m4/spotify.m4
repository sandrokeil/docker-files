include(`arch.m4')

RUN pacman -Sy --noconfirm gconf libnotify libxtst nss xdg-utils libxss ffmpeg libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore

AUR_ADD_USER() \
    && sudo -u builduser bash -c 'gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90' \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/spotify.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["spotify"]
