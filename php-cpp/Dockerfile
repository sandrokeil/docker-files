FROM ubuntu:17.10

ENV PHP_CPP_VERSION master

# persistent / runtime deps
ENV PHPIZE_DEPS \
        autoconf \
        dpkg-dev \
        file \
        g++ \
        gcc \
        libc-dev \
        libpcre3-dev \
        make \
        cmake \
        git \
        pkg-config \
        re2c
RUN apt-get update && apt-get install -y \
        $PHPIZE_DEPS \
        php7.1-dev \
        build-essential \
        cmake \
        libssl-dev \
        libcurl4-openssl-dev \
        libboost-system-dev \
        libboost-thread-dev \
        ca-certificates \
        curl \
        libedit2 \
        libsqlite3-0 \
        libxml2 \
        xz-utils \
        lsb-release \
        bc \
    --no-install-recommends && rm -r /var/lib/apt/lists/* \
    && git clone --branch ${PHP_CPP_VERSION} https://github.com/CopernicaMarketingSoftware/PHP-CPP /tmp/php-cpp \
    && cd /tmp/php-cpp \
    && make \
    && make install \
    && rm -rf /tmp/*

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app
