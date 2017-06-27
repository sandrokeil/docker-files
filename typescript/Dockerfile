FROM node:8.1.2-alpine

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
    && npm install --silent --save-dev -g \
        gulp-cli \
        typescript

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

CMD ["npm", "-v"]
