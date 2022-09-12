RUN pacman -Sy --noconfirm graphviz nss libxss tree \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/vscode, https://code.visualstudio.com/sha/download?build=stable&os=linux-x64)

RUN chown root:root /opt/vscode/chrome-sandbox && chmod 4755 /opt/vscode/chrome-sandbox

ENTRYPOINT ["/opt/vscode/code"]
