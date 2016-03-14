#!/bin/bash

# Stop on first error
set -e

# Define defaults
RES="${RES:-1920x1080}"
DEPTH="${DEPTH:-24}"
FRAMES="${FRAMES:-60}"
SEC_PER_DAY=${SEC_PER_DAY:-0.3}
HIDE=${HIDE:-filenames}
COMPRESSION=${COMPRESSION:-18}
GOURCE_ARGS=${GOURCE_ARGS:-}

render () {
  cd /results

  echo "Using $RES $DEPTH $FRAMES $SEC_PER_DAY"
  screen -dmS recording xvfb-run -a -s "-screen 0 ${RES}x${DEPTH}" gource combined.txt -r 60 --auto-skip-seconds 1 --max-file-lag 0.1 --stop-at-end "-$RES" --user-image-dir /avatars/ --highlight-all-users -s 0.5 --seconds-per-day ${SEC_PER_DAY} --hide ${HIDE} ${GOURCE_ARGS} -o gource.ppm

  # This hack is needed because gource process doesn't stop
  lastsize="0"
  filesize="0"

  while [[ "$filesize" -eq "0" || $lastsize -lt $filesize ]] ;
  do
      sleep 5
      lastsize="$filesize"
      filesize=$(stat -c '%s' /results/gource.ppm)
      echo 'Polling the size. Current size is' $filesize
  done

  echo 'Force stopping recording because file size is not growing'
  screen -S recording -X quit
}

convert () {
    xvfb-run -a -s "-screen 0 ${RES}x${DEPTH}" ffmpeg -y -r ${FRAMES} -f image2pipe -loglevel info -vcodec ppm -i /results/gource.ppm -vcodec libx264 -preset medium -pix_fmt yuv420p -crf ${COMPRESSION} -threads 0 -bf 0 /results/gource.mp4
}

audio () {
    cd /mp3s
    AUDIO_FILES=

    for f in *.mp3; do
        if [ -e $f ]; then
            if [ -n "$AUDIO_FILES" ]; then
                AUDIO_FILES="${AUDIO_FILES}|"
            fi
            AUDIO_FILES="${AUDIO_FILES}${f}"
        fi
    done

    if [ -z "$AUDIO_FILES" ]; then
        echo "No audio files found."
        return
    fi

    ffmpeg -i /results/gource.mp4 -i "concat:$AUDIO_FILES" -map 0:v -map 1:a -codec copy -shortest /results/gource-audio.mp4
}

if [ -e "/results/gource.ppm" ]; then
    echo "Video gource.ppm already exists."
else
    FILES=

    for d in */ ; do
        DIR=${d%?}
        gource --output-custom-log /results/${DIR}.log ${DIR}
        sed -i -r "s#(.+)\|#\1|/$DIR#" /results/${DIR}.log
        FILES="$FILES /results/${DIR}.log"
    done

    cat ${FILES} | sort -n > /results/combined.txt

    render
fi

convert
audio
