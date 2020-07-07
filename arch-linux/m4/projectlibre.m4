include(`arch.m4')

COPY projectlibre.jar /opt/projectlibre.jar

RUN pacman -Sy --noconfirm jre10-openjdk

ENTRYPOINT ["java", "-jar", "/opt/projectlibre.jar"]
