FROM php:5.6-fpm
MAINTAINER Sandro Keil <docker@sandro-keil.de>

RUN apt-get update \
    && apt-get install -y \
      file \
      # for gd
      libpng12-dev \
      libjpeg-dev \
      # for intl extension
      libicu-dev \
      g++ \
      # for mcrypt extension
      mcrypt \
      libmcrypt-dev \
      # for xml extension
      libxml2 \
      libxml2-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-configure bcmath --enable-bcmath \
  && docker-php-ext-configure mbstring --enable-mbstring \
  && docker-php-ext-configure intl --enable-intl \
  && docker-php-ext-configure opcache --enable-opcache \
  && docker-php-ext-configure pdo_mysql --with-pdo-mysql \
  && docker-php-ext-configure pdo_mysql --with-mysqli \
  && docker-php-ext-configure pcntl --enable-pcntl \
  && docker-php-ext-configure soap --enable-soap

RUN docker-php-ext-install \
       gd \
       bcmath \
       intl \
       mbstring \
       mcrypt \
       opcache \
       pcntl \
       pdo_mysql \
       mysqli \
       soap

COPY php.ini /usr/local/etc/php/
