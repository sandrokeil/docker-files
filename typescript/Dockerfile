FROM node:12-alpine3.12

RUN apk add --no-cache --virtual .persistent-deps \
        curl \
        openssl \
        # for node-sass module
        make \
        gcc \
        g++ \
        python2 \
        py-pip \
        # for scully / puppeteer, also see Github issue: https://github.com/scullyio/scully/issues/924#issuecomment-693383520
        musl \
        chromium \
        nss \
        freetype \
        freetype-dev \
        harfbuzz \
        ca-certificates \
        ttf-freefont \
    # Install node packages
    && npm install --silent --save-dev -g \
        typescript

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# for scully / puppeteer, also see Github issue: https://github.com/scullyio/scully/issues/924#issuecomment-693383520
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV SCULLY_PUPPETEER_EXECUTABLE_PATH '/usr/bin/chromium-browser'

CMD ["npm", "-v"]
