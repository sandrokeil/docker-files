FROM composer/composer
MAINTAINER Sandro Keil <docker@sandro-keil.de>

ENV BOOKDOWN_VERSION 0.5.0
ENV TEMPLATES_VERSION 0.3.0
ENV TEMPLATES_PATH /root/composer/vendor/tobiju/bookdown-bootswatch-templates/templates
ENV VENDOR_PATH /root/composer/vendor/

RUN composer global require bookdown/bookdown:${BOOKDOWN_VERSION} \
    tobiju/bookdown-bootswatch-templates:${TEMPLATES_VERSION}

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
