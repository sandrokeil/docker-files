include(`arch.m4')

RUN pacman -Sy --noconfirm shellharden \
    && pacman -Scc --noconfirm

ENTRYPOINT ["shellharden"]
CMD ["-h"]