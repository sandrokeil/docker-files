RUN pacman -Sy --noconfirm python-pip \
    && pip install --upgrade \
       cfn-lint \
    && pacman -Scc --noconfirm
