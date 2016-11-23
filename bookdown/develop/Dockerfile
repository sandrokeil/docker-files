FROM composer/composer:master-alpine
MAINTAINER Sandro Keil <docker@sandro-keil.de>

ENV TEMPLATES_PATH=/root/composer/vendor/tobiju/bookdown-bootswatch-templates/templates \
    VENDOR_PATH=/root/composer/vendor/

COPY composer.json /root/composer/
COPY docker-entrypoint.sh /

RUN composer global update

ENTRYPOINT ["/docker-entrypoint.sh"]
