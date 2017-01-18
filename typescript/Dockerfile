FROM node:7.1.0-alpine

RUN apk add --no-cache --virtual .persistent-deps \
        curl \
        openssl \
        # for node-sass module
        make \
        gcc \
        g++ \
        python \
        py-pip \
    # Install node packages
    && npm install --silent -g \
        gulp-cli \
        bower \
        typescript \
        typings \
        webpack

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

CMD ["npm", "-v"]
