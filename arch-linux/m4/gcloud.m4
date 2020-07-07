include(`arch.m4')

RUN pacman -Sy --noconfirm docker \
    && pacman -Scc --noconfirm

RUN mkdir -p /usr/bin \
    && curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.3/docker-credential-secretservice-v0.6.3-amd64.tar.gz | tar -zxvf - -C /usr/bin

RUN mkdir -p /opt/gcloud \
    && curl -L https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-275.0.0-linux-x86_64.tar.gz | tar xzf - --strip-components=1 -C /opt/gcloud

ENTRYPOINT ["/opt/gcloud/bin/gcloud"]
CMD ["help"]
