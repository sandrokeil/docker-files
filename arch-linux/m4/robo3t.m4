include(`arch.m4')

COPY arch-aur-install /usr/bin

include(`i-builduser.m4') \
include(`i-robo3t.m4') \
include(`d-builduser.m4')

ENTRYPOINT ["robo3t"]