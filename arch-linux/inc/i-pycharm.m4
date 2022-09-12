RUN pacman -Sy --noconfirm python \
      python-pip \
      python-numpy \
      python-scipy \
      python-six \
      python-setuptools \
      python-wheel \
      cython \
      nss \
      libxss \
      groff \
      libffi \
      gcc \
      glibc \
      tensorflow \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/pycharm, https://download.jetbrains.com/python/pycharm-professional-2022.2.1.tar.gz)

ENV PATH="/opt/pycharm/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/pycharm/bin/pycharm.sh"]
