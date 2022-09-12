RUN pacman -Sy --noconfirm graphviz nss libxss tree \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/phpstorm, https://download.jetbrains.com/webide/PhpStorm-2022.2.1.tar.gz)

ENV PATH="/opt/phpstorm/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/phpstorm/bin/phpstorm.sh"]

#RUN sed -i 's/;//g' /etc/php/conf.d/xdebug.ini
COPY xdebug-cli.ini /etc/php/conf.d/xdebug.ini
