include(`arch.m4')
RUN pacman -Sy --noconfirm texlive-core texlive-latexextra texlive-fontsextra texlive-bibtexextra texlive-science biber \
    && pacman -Scc --noconfirm

ENV PATH="${PATH}:/usr/bin/vendor_perl"
