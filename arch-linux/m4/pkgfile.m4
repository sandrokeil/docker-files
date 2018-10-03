include(`arch.m4')

# docker run --rm -it sandrokeil/archlinux:pkgfile ping

RUN pacman -Sy --noconfirm pkgfile \
    && pkgfile -u \
    && pacman -Scc --noconfirm

ENTRYPOINT ["pkgfile"]