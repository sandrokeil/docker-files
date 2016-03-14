FROM ubuntu:14.04

# Update the repositories list and install software to add a PPA
RUN apt-get update \
    && apt-get install -y software-properties-common \
    # Add the PPA with ffmpeg
    && apt-add-repository -y ppa:mc3man/trusty-media \
    && apt-get update \
    # Install required software
    && apt-get install -y \
       git \
       mercurial \
       xvfb \
       xfonts-base \
       xfonts-75dpi \
       xfonts-100dpi \
       xfonts-cyrillic \
       gource \
       screen \
       ffmpeg  \
    && rm -rf /var/lib/apt/lists/*

# Mount volumes
VOLUME ["/repos", "/avatars", "/results", "/mp3s"]

# Set the working directory to where the git repository is stored
WORKDIR /repos

# Add the init script
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Run the init script by default
ENTRYPOINT ["/docker-entrypoint.sh"]
