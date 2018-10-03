include(`arch.m4')

ENV GCSF_VERSION 0.1.17

RUN pacman -Sy --noconfirm openssl-1.0 fuse2 \
    && echo "user_allow_other" >> /etc/fuse.conf \
    && mkdir -p /opt/bin \
    && cd /opt/bin \
    && curl -L https://github.com/harababurel/gcsf/releases/download/${GCSF_VERSION}/gcsf-${GCSF_VERSION}-x86_64-unknown-linux-gnu.tar.gz | tar xzf - \
    && pacman -Scc --noconfirm

ENTRYPOINT ["/opt/bin/gcsf"]
