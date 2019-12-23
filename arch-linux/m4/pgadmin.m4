include(`arch.m4')

RUN pacman -Sy --noconfirm openssl-1.0 pgadmin4

ENTRYPOINT ["pgadmin4"]