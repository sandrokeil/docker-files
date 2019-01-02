include(`arch.m4')

RUN pacman -Sy --noconfirm shellcheck \
    && pacman -Scc --noconfirm

ENTRYPOINT ["shellcheck"]
CMD ["-h"]