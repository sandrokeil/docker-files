include(`arch.m4')

RUN pacman -Sy --noconfirm python-pip groff libffi \
    && pip install --upgrade \
       awscli \
       boto3 \
       pip \
    && pacman -Scc --noconfirm

ENTRYPOINT ["aws"]
CMD ["help"]