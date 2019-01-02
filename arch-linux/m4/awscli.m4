include(`arch.m4')

RUN pacman -Sy --noconfirm python-pip groff libffi \
    && pip install --upgrade \
       awscli \
       boto \
       pip \
    && pacman -Scc --noconfirm

ENTRYPOINT ["aws"]
CMD ["help"]