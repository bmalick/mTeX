FROM debian
WORKDIR /app
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-base texlive-latex-base texlive-xetex latexmk \
    texlive-fonts-extra texlive-science texlive-lang-arabic \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /mtex
RUN chmod +x /mtex/bin/mtex && ln -s /mtex/bin/mtex /usr/local/bin/mtex
RUN mtex init

