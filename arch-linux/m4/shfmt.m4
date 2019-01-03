include(`arch.m4')

RUN pacman -Sy --noconfirm go git \
    && go get -u mvdan.cc/sh/cmd/shfmt \
    && pacman -Rs --noconfirm git \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/root/go/bin/shfmt"]
CMD ["-h"]