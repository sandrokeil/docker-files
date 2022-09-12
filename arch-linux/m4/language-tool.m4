include(`arch.m4')

RUN pacman -Sy --noconfirm jre11-openjdk \
    && mkdir -p /opt/languagetool \
    && curl -L https://languagetool.org/download/LanguageTool-5.1.zip | bsdtar -xf - -C /opt

ENTRYPOINT ["java", "-jar", "/opt/LanguageTool-5.1/languagetool.jar"]
