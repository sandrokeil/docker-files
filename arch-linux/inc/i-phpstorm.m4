RUN pacman -Sy --noconfirm graphviz \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/phpstorm, https://download.jetbrains.com/webide/PhpStorm-2019.3.1.tar.gz)

ENV PATH="/opt/phpstorm/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/phpstorm/bin/phpstorm.sh"]
