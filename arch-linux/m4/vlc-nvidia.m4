include(`arch-nvidia.m4')

RUN pacman -Syu --noconfirm ffmpeg libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore vlc \
    && pacman -Scc --noconfirm

WORKDIR /app
VOLUME /app

ENTRYPOINT ["vlc"]
CMD ["help"]