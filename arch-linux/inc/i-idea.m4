RUN pacman -Sy --noconfirm graphviz xmlstarlet \
    && pacman -Scc --noconfirm

DOWNLOAD(/opt/ideaIU, https://download.jetbrains.com/idea/ideaIU-2019.3.4.tar.gz)

ENV PATH="/opt/ideaIU/jbr/bin:${PATH}"

ENTRYPOINT ["/opt/ideaIU/bin/idea.sh"]
