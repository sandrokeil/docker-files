include(`arch.m4')

RUN pacman -Sy --noconfirm s3fs-fuse \
    && echo "user_allow_other" >> /etc/fuse.conf \
    && pacman -Scc --noconfirm

ENTRYPOINT ["s3fs"]
