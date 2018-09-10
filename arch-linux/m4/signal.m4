include(`arch.m4')

COPY arch-aur-install /usr/bin

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm gconf gtk2 libnotify libxtst nss xdg-utils libxss

include(`i-builduser.m4') \
    && sudo -u builduser bash -c 'cd ~ && mkdir tmp && cd tmp && arch-aur-install https://aur.archlinux.org/cgit/aur.git/snapshot/signal-desktop-bin.tar.gz' \
include(`d-builduser.m4')

ENTRYPOINT ["signal-desktop"]
