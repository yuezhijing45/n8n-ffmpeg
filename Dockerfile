
USER root

# 安装常用系统工具和依赖
RUN apk add --no-cache \
    # 视频/音频处理
    ffmpeg \
    # Python 环境
    python3 \
    py3-pip \
    # 图像处理
    imagemagick \
    # 网络工具
    curl \
    wget \
    # 压缩工具
    zip \
    unzip \
    tar \
    gzip \
    # 文本处理
    jq \
    # Git 工具
    git \
    # 其他常用工具
    bash \
    nano \
    && \
    # 安装常用 Python 包
    pip3 install --no-cache-dir --break-system-packages \
    # 视频下载
    yt-dlp \
    # HTTP 请求
    requests \
    # HTML 解析
    beautifulsoup4 \
    lxml \
    # 数据处理
    pandas \
    # 图像处理
    Pillow \
    # PDF 处理
    PyPDF2 \
    # Excel 处理
    openpyxl \
    # 其他实用工具
    python-dotenv

USER node
