RUN pacman -Sy --noconfirm ffmpeg libmfx libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore aria2 obs-studio \
    && pacman -Scc --noconfirm

ENTRYPOINT ["obs"]
