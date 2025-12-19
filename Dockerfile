FROM n8nio/n8n:latest

USER root

# 安装 ffmpeg、Python 和相关依赖
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip

# 验证安装
RUN ffmpeg -version && python3 --version

# 切换回 n8n 用户
USER node

# 使用默认的 n8n 启动命令
CMD ["n8n"]
