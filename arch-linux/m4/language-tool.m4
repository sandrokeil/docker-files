include(`arch.m4')

RUN pacman -Sy --noconfirm jre10-openjdk \
    && mkdir -p /opt/languagetool \
    && curl -L https://languagetool.org/download/LanguageTool-4.7.zip | bsdtar -xf - -C /opt

ENTRYPOINT ["java", "-jar", "/opt/LanguageTool-4.7/languagetool.jar"]
