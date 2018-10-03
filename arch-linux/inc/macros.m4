define(`DONT_CHANGE',
`# DO NOT MODIFY THIS AUTOGENERATED FILE
# Change it in m4 folder')

define(`DOWNLOAD',
`RUN mkdir -p $1 && curl -L https://download.jetbrains.com/webide/PhpStorm-2018.2.4.tar.gz | tar xzf - --strip-components=1 -C $1')

define(`AUR_DOWNLOAD',
`&& sudo -u builduser bash -c "mkdir -p ~/$1 && curl -L $2 | tar xzf - --strip-components=1 -C ~/$1"')

define(`MAKEPKG',
`&& sudo -u builduser bash -c "cd ~/$1 && makepkg -si --noconfirm $2"')

define(`AUR_ADD_USER',
`RUN pacman -Sy --noconfirm sudo patch gzip git gcc make pkg-config diffutils file \
    && useradd builduser -m \
    && passwd -d builduser \
    && printf "builduser ALL=(ALL) ALL\n" | tee -a /etc/sudoers')

define(`AUR_DEL_USER',
`    && userdel -r builduser \
    && pacman -Rs --noconfirm git gcc make \
    && pacman -Scc --noconfirm $1')

define(`AUR_PKGBUILD_SED',
`&& sed -i $2 /home/builduser/$1/PKGBUILD')

