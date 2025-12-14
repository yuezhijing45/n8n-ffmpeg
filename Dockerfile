# 使用官方 n8n 镜像作为基础镜像
FROM n8nio/n8n:latest

# 切换为 root 用户以便安装依赖
USER root

# 安装 ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 确保 ffmpeg 在 n8n (node 用户) 环境下可访问
RUN ln -sf /usr/bin/ffmpeg /usr/local/bin/ffmpeg

# 切回 node 用户
USER node

# 启动 n8n
CMD ["n8n", "start"]
