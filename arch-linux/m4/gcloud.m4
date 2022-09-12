include(`arch.m4')
include(`i-git.m4')

RUN pacman -Sy --noconfirm docker \
        curl \
        python3 \
        python-pip \
        gnupg \
        nss \
        libxss \
        groff \
        libffi \
        gcc \
        glibc \
    && pip3 install --no-cache-dir -U crcmod \
    && pacman -Scc --noconfirm

RUN mkdir -p /usr/bin \
    && curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.3/docker-credential-secretservice-v0.6.3-amd64.tar.gz | tar -zxvf - -C /usr/bin

RUN mkdir -p /opt/gcloud \
    && curl -L https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-346.0.0-linux-x86_64.tar.gz | tar xzf - --strip-components=1 -C /opt/gcloud

ENV PATH="/opt/gcloud/bin:${PATH}"

RUN gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true

RUN curl -L https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip | bsdtar -xf - -C /usr/bin
RUN chmod +x /usr/bin/terraform

RUN gcloud components install kubectl alpha beta

CMD ["/bin/bash"]
