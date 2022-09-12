include(`arch.m4')

RUN pacman -Sy --noconfirm vorbis-tools asunder ffmpeg libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore vlc \
    && pacman -Scc --noconfirm

ENTRYPOINT ["asunder"]
