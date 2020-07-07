include(`arch.m4')

COPY JabRef-4.3.1.jar /opt/jabref.jar

AUR_ADD_USER() \
    AUR_DOWNLOAD(tmp, https://aur.archlinux.org/cgit/aur.git/snapshot/jdk8.tar.gz) \
    MAKEPKG(tmp) \
AUR_DEL_USER()

ENTRYPOINT ["java", "-jar", "/opt/jabref.jar"]
