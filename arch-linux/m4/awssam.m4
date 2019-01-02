include(`macros.m4')
DONT_CHANGE()
FROM sandrokeil/archlinux:awscli

RUN pacman -Sy --noconfirm gcc make \
    && pip install aws-sam-cli
   # && pacman -Scc --noconfirm

ENTRYPOINT ["sam"]
CMD ["--version"]