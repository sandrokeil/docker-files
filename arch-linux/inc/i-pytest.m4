RUN pacman -Sy --noconfirm python-pip groff libffi \
      gcc \
      glibc \
    && pip install --upgrade \
      dotsi \
      unittest-xml-reporting \
      xmlrunner \
      pyyaml \
    && pacman -Scc --noconfirm

