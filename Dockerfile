# 1. 选择一个包含 Node.js 的基础镜像。
# 我们选择 'slim' 版本以保持容器轻量。
FROM node:lts-slim

# 2. 安装 FFmpeg：这是核心步骤！
# RUN 命令用于在构建过程中执行命令。
# - apt-get update: 更新包列表。
# - apt-get install -y ffmpeg: 安装 FFmpeg 及其所有依赖。
# - rm -rf...: 清理缓存，保持最终镜像小巧。
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# 3. 设置工作目录
WORKDIR /app

# 4. 复制并安装您的项目依赖
COPY package*.json ./
RUN npm install

# 5. 复制您的项目代码
COPY . .

# 6. 定义服务启动命令（请根据您的项目主文件调整）
CMD ["node", "server.js"]
