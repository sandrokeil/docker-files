RUN mkdir -p /opt/phpstorm \
    && curl -L https://download.jetbrains.com/webide/PhpStorm-2018.2.tar.gz | tar xzf - --strip-components=1 -C "/opt/phpstorm"
