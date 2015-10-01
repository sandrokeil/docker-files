FROM composer/composer
MAINTAINER Sandro Keil <docker@sandro-keil.de>

ENV BOOKDOWN_VERSION dev-master

RUN composer global require bookdown/bookdown:${BOOKDOWN_VERSION}
ENTRYPOINT ["/root/composer/vendor/bin/bookdown"]
