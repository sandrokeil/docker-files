FROM composer/composer
MAINTAINER Sandro Keil <docker@sandro-keil.de>

ENV BOOKDOWN_VERSION dev-develop as 0.5.0
ENV TEMPLATES_VERSION dev-develop
ENV TEMPLATES_PATH /root/composer/vendor/tobiju/bookdown-bootswatch-templates/templates
ENV VENDOR_PATH /root/composer/vendor/

RUN composer global require bookdown/bookdown:"${BOOKDOWN_VERSION}" \
    tobiju/bookdown-bootswatch-templates:${TEMPLATES_VERSION} \
    webuni/commonmark-table-extension:^0.4.2 \
    webuni/commonmark-attributes-extension:^0.3.1

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
