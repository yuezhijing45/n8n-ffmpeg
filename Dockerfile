FROM n8nio/n8n:1.123.7

USER root

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    imagemagick \
    curl \
    wget \
    zip \
    unzip \
    tar \
    gzip \
    jq \
    git \
    bash \
    nano

RUN pip3 install --no-cache-dir --break-system-packages \
    yt-dlp \
    requests \
    beautifulsoup4 \
    lxml \
    pandas \
    Pillow \
    PyPDF2 \
    openpyxl \
    python-dotenv

USER node
