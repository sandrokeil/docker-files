RUN pacman -Sy --noconfirm ffmpeg libmfx libfdk-aac lame a52dec libvorbis flac wavpack libmpeg2 xvidcore aria2 \
    && pacman -Scc --noconfirm \
    && echo "--ignore-errors" > /etc/yt-dlp.conf \
    && echo "-o ~/Videos/%(title)s.%(ext)s" >> /etc/yt-dlp.conf \
    && echo "-f bestvideo[ext=mp4][height<1200]+bestaudio[ext=m4a]/bestvideo[ext=webm][height<1200]+bestaudio[ext=webm]/bestvideo[height<1200]+bestaudio/best[height<1200]/best" >> /etc/yt-dlp.conf \
    && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp

# "--external-downloader", "aria2c", "--external-downloader-args", "'-c -j4 -x5 -k10M'"
ENTRYPOINT ["yt-dlp"]
