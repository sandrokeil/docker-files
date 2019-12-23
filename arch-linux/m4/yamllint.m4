include(`arch.m4')

RUN pacman -Sy --noconfirm python-pip \
    && pip install --upgrade \
       yamllint \
    && pacman -Scc --noconfirm

ENTRYPOINT ["yamllint"]
