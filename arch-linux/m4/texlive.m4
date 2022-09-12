include(`arch.m4')
RUN pacman -Syu --noconfirm texlive-core texlive-latexextra texlive-fontsextra texlive-bibtexextra texlive-science texlive-bin texlive-langextra biber poppler ghostscript pandoc \
    && pacman -Scc --noconfirm

ENV PATH="${PATH}:/usr/bin/vendor_perl"
