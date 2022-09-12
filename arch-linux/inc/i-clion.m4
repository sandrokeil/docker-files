RUN pacman -Sy --noconfirm nss libxss gcc make cmake php autoconf pkgconf re2c \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/clion, https://download.jetbrains.com/cpp/CLion-2022.2.1.tar.gz)

ENV PATH="/opt/clion/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/clion/bin/clion.sh"]
