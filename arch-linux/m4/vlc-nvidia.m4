include(`arch-nvidia.m4')

RUN pacman -Sy --noconfirm ffmpeg libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore vlc \
    && pacman -Scc --noconfirm

ENTRYPOINT ["vlc"]
CMD ["-vv"]