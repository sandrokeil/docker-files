include(`arch-nvidia.m4')

COPY arch-aur-install /usr/bin

include(`i-builduser.m4') \
include(`i-rambox.m4') \
include(`d-builduser.m4')

ENTRYPOINT ["rambox"]
