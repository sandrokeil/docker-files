include(`arch.m4')

RUN pacman -Sy --noconfirm python-pip groff libffi docker \
    && pip install --upgrade \
       pip \
       azure-cli \
    && pacman -Scc --noconfirm

RUN mkdir -p /usr/bin \
    && curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.0/docker-credential-secretservice-v0.6.0-amd64.tar.gz | tar xf - -C /usr/bin

ENTRYPOINT ["az"]
CMD ["help"]