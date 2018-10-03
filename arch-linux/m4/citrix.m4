include(`arch.m4')

# add quotes to c_rehash
RUN sed -i 's#my $dir = /etc/ssl;#my $dir = "/etc/ssl";#' /usr/sbin/c_rehash \
    && sed -i 's#my $prefix = /usr;#my $dir = my $prefix = "/usr";#' /usr/sbin/c_rehash

AUR_ADD_USER() \
    && sudo -u builduser bash -c 'gpg --keyserver=keyserver.ubuntu.com --recv-keys 860B7FBB32F8119D' \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/libidn-133-compat.tar.gz) \
    MAKEPKG(tmp) \
    AUR_DOWNLOAD(tmp2, https://aur.archlinux.org/cgit/aur.git/snapshot/icaclient.tar.gz) \
    MAKEPKG(tmp2) \
AUR_DEL_USER()

ENTRYPOINT ["/opt/Citrix/ICAClient/wfica"]
