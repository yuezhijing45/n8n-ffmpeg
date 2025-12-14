# 1. 继承 n8n 官方基础镜像
# 请确认您使用的 n8n 镜像标签是否正确，例如 n8nio/n8n:latest 或指定版本
FROM n8nio/n8n:latest 

# 2. 切换到 root 用户来安装系统依赖 (必须)
USER root 

# 3. 更新包列表并安装 FFmpeg
# 确保在 RUN 命令中没有拼写错误
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# 4. 切换回 n8n 运行所需的非 root 用户 (必须)
# 这一步是为了安全和权限。如果 n8n 官方镜像的用户不是 node，请查看其文档确认。
USER node 

# 5. 复制您的本地自定义文件（如果需要）
# COPY . . 

# 6. 定义启动命令（通常继承自基础镜像，除非您有特殊需求）
# CMD ["n8n"]
