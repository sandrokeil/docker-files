include(`arch-nvidia.m4')

RUN pacman -Sy --noconfirm ffmpeg imagemagick mencoder \
    && pacman -Scc --noconfirm \
    && curl -o /usr/bin/gopro -D - -L -s https://raw.githubusercontent.com/KonradIT/gopro-linux/master/gopro \
    && chmod +x /usr/bin/gopro

RUN sed -i "s/ffmpeg -i/ffmpeg -hwaccel cuda -i/g" /usr/bin/gopro

WORKDIR /app
VOLUME /app

ENTRYPOINT ["gopro"]
CMD ["help"]