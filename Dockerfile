FROM n8nio/n8n:latest

USER root

# 安装 ffmpeg、Python 3 和 pip
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip

# 切换回 node 用户
USER node

# n8n 会自动启动，不需要显式指定 CMD
