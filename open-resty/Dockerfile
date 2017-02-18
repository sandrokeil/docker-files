FROM openresty/openresty:alpine-fat
MAINTAINER Sandro Keil <docker@sandro-keil.de>

RUN apk add --no-cache --virtual .run-deps \
    bash \
    curl \
    diffutils \
    grep \
    sed \
    openssl \
    && mkdir -p /etc/resty-auto-ssl \
    && chown nobody /etc/resty-auto-ssl

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        libc-dev \
        make \
        openssl-dev \
        pcre-dev \
        zlib-dev \
        linux-headers \
        gnupg \
        libxslt-dev \
        gd-dev \
        geoip-dev \
        perl-dev \
        tar \
        unzip \
        zip \
        unzip \
        g++ \
        cmake \
        lua \
        lua-dev \
        bash \
        make \
        autoconf \
        automake \
    && /usr/local/openresty/luajit/bin/luarocks install lua-resty-auto-ssl \
    && apk del .build-deps \
    && rm -rf /usr/local/openresty/nginx/conf/* \
    # forward request and error logs to docker log collector
    && mkdir -p /var/log/nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir -p /var/cache/nginx

COPY ./ssl /etc/resty-auto-ssl
