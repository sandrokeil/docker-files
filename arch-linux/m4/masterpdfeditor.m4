include(`arch.m4')

COPY arch-aur-install /usr/bin

include(`i-builduser.m4') \
    && sudo -u builduser bash -c 'cd ~ && mkdir tmp && cd tmp && arch-aur-install https://aur.archlinux.org/cgit/aur.git/snapshot/masterpdfeditor4.tar.gz' \
include(`d-builduser.m4')

ENTRYPOINT ["masterpdfeditor4"]
