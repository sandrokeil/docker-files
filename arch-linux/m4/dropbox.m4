include(`arch.m4')

RUN cd /opt && curl -L https://www.dropbox.com/download?plat=lnx.x86_64 | tar xzf - \
    && curl -L https://www.dropbox.com/download?dl=packages/dropbox.py --output /opt/dropbox.py \
    && chmod +x /opt/dropbox.py

#ENTRYPOINT ["python2", "/opt/dropbox.py"]
#CMD ["start"]
ENTRYPOINT ["/opt/.dropbox-dist/dropboxd"]