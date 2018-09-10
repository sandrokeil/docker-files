include(`arch.m4')

COPY arch-aur-install /usr/bin

include(`i-multilib.m4') \
    && pacman -Sy --noconfirm xdg-utils libxss lib32-gconf lib32-nss

include(`i-builduser.m4') \
    && sudo -u builduser bash -c 'cd ~ && mkdir tmp && cd tmp && arch-aur-install https://aur.archlinux.org/cgit/aur.git/snapshot/ark-desktop.tar.gz' \
include(`d-builduser.m4') \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="1b7c", MODE="0660", GROUP="users",  TAG+="uaccess", TAG+="udev-acl"' > /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="2b7c", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="3b7c", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="4b7c", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="1807", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="1808", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2c97", ATTRS{idProduct}=="0000", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="2c97", ATTRS{idProduct}=="0001", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl”' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0660", GROUP="users", ATTRS{idVendor}=="2c97"' >> /etc/udev/rules.d/20-hw1.rules \
    && echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0660", GROUP="users", ATTRS{idVendor}=="2581"' >> /etc/udev/rules.d/20-hw1.rules

ENTRYPOINT ["arkclient"]
