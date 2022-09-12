RUN pacman -Sy --noconfirm graphviz nss \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/phpstorm, https://download.jetbrains.com/webide/PhpStorm-221.4165.156.tar.gz)

ENV PATH="/opt/phpstorm/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/phpstorm/bin/phpstorm.sh"]
