FROM pandoc/latex

# Child image of pandoc/latex, distributed under GPL-2.0-or-later

RUN apk add --no-cache \
    make \
    # texlive
    zip \
    && tlmgr update --self \
    && tlmgr install \
    adjustbox \
    collectbox \
    comment \
    dashundergaps \
    koma-script \
    oberdiek \
    pdfpages \
    sauerj \
    tikzmark \
    titling \
    underscore

ENTRYPOINT ["pdflatex"]
