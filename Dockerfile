# 使用官方 n8n 镜像作为基础
FROM n8nio/n8n:latest

# 切换到 root 用户以安装软件
USER root

# 安装 ffmpeg 和相关依赖
RUN apk update && \
    apk add --no-cache \
    ffmpeg \
    ffmpeg-libs \
    && rm -rf /var/cache/apk/*

# 验证 ffmpeg 安装
RUN ffmpeg -version

# 切换回 node 用户（n8n 默认用户）
USER node

# 暴露 n8n 端口
EXPOSE 5678

# 使用 n8n 默认启动命令
CMD ["n8n"]
