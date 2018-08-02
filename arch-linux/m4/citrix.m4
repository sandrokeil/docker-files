include(`arch.m4')

COPY arch-aur-install /usr/bin
# add quotes to c_rehash
RUN sed -i 's#my $dir = /etc/ssl;#my $dir = "/etc/ssl";#' /usr/sbin/c_rehash \
    && sed -i 's#my $prefix = /usr;#my $dir = my $prefix = "/usr";#' /usr/sbin/c_rehash

include(`i-builduser.m4') \
    && sudo -u builduser bash -c 'cd ~ && mkdir tmp && cd tmp && arch-aur-install https://aur.archlinux.org/cgit/aur.git/snapshot/icaclient.tar.gz' \
include(`d-builduser.m4')

ENTRYPOINT ["/opt/Citrix/ICAClient/wfica"]
