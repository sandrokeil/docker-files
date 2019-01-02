include(`arch.m4')

RUN pacman -Sy --noconfirm go \
    && go get -u mvdan.cc/sh/cmd/shfmt \
    && pacman -Scc --noconfirm

ENTRYPOINT ["shfmt"]
CMD ["-h"]