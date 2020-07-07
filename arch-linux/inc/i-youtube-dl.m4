RUN pacman -Sy --noconfirm ffmpeg libmfx libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore youtube-dl aria2 \
    && pacman -Scc --noconfirm \
    && echo "--ignore-errors" > /etc/youtube-dl.conf \
    && echo "-o ~/Videos/%(title)s.%(ext)s" >> /etc/youtube-dl.conf \
    && echo "-f bestvideo[ext=mp4][height<1200]+bestaudio[ext=m4a]/bestvideo[ext=webm][height<1200]+bestaudio[ext=webm]/bestvideo[height<1200]+bestaudio/best[height<1200]/best" >> /etc/youtube-dl.conf

# "--external-downloader", "aria2c", "--external-downloader-args", "'-c -j4 -x5 -k10M'"
ENTRYPOINT ["youtube-dl"]
