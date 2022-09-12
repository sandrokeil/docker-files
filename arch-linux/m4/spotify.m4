include(`arch.m4')

RUN pacman -Sy --noconfirm dconf libnotify libxtst nss xdg-utils libxss ffmpeg libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore

AUR_ADD_USER() \
    && sudo -u builduser bash -c 'curl -sS <https://download.spotify.com/debian/pubkey.gpg>| gpg --import' \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/spotify.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["spotify"]
