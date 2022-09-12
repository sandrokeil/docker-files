RUN pacman -Sy --noconfirm npm openssl base-devel \
    && npm install -g markdownlint markdownlint-cli \
    && pacman -Scc --noconfirm
