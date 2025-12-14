# 使用官方 n8n 镜像
FROM n8nio/n8n:latest

# 切换为 root 用户以便安装依赖
USER root

# 使用 Alpine 包管理器安装 ffmpeg
RUN apk update && \
    apk add --no-cache ffmpeg

# 确保 ffmpeg 可被 node 用户访问
RUN ln -sf /usr/bin/ffmpeg /usr/local/bin/ffmpeg

# 切回 node 用户
USER node

# 启动 n8n
CMD ["n8n", "start"]
