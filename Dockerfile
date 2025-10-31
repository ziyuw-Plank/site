# 基于官方 PHP + Apache 镜像
FROM php:8.2-apache

# 安装 curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# 将网站文件复制到 Apache 目录
COPY . /var/www/html/

# 确保脚本可执行（如果有 .sh 文件）
RUN chmod +x /var/www/html/*.sh || true

# 暴露默认 HTTP 端口
EXPOSE 80

# 启动 Apache
CMD ["apache2-foreground"]
