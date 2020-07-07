include(`arch.m4')

RUN pacman -Sy --noconfirm jre11-openjdk \
    && mkdir -p /opt \
    && curl -L https://downloads.metabase.com/v0.35.3/metabase.jar -o /opt/metabase.jar

ENTRYPOINT ["java", "-jar", "/opt/metabase.jar"]
