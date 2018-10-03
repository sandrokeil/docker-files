include(`arch.m4')

RUN pacman -Sy --noconfirm dnsutils iperf traceroute iputils \
    && pacman -Scc --noconfirm
