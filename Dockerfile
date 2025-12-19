FROM n8nio/n8n:latest

USER root

# 安装 ffmpeg 和其他可能需要的工具
RUN apk add --no-cache ffmpeg

USER node
