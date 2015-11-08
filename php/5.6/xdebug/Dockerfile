FROM sandrokeil/php:5.6-cli
MAINTAINER Sandro Keil <docker@sandro-keil.de>

WORKDIR /tmp

# XDEBUG
ENV XDEBUG_VERSION 2.3.3
RUN curl -L http://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz | tar zx

WORKDIR xdebug-$XDEBUG_VERSION

RUN phpize \
 && ./configure \
 && make -j \
 && make install

RUN rm -rf "/tmp/xdebug-$XDEBUG_VERSION"

COPY xdebug.ini /usr/local/etc/php/conf.d/

WORKDIR /app
