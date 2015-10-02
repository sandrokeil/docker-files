FROM php:5.6-cli

RUN apt-get update \
    && apt-get install -y \
      file \
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

RUN docker-php-ext-configure bcmath --enable-bcmath \
    && docker-php-ext-configure mbstring --enable-mbstring \
    && docker-php-ext-configure intl --enable-intl \
    && docker-php-ext-configure pcntl --enable-pcntl

RUN docker-php-ext-install \
    bcmath \
    intl \
    mbstring \
    mcrypt \
    pcntl

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app
