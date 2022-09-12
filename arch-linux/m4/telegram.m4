include(`arch.m4')

RUN mkdir -p /opt/telegram \
  && curl -L https://telegram.org/dl/desktop/linux | bsdtar --strip-components 1 -xf - -C /opt/telegram

ENTRYPOINT ["/opt/telegram/Telegram"]
