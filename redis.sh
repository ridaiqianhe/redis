#!/bin/bash

# 创建所需目录
mkdir -p /www/wwwroot/redis/data

# 下载 redis.conf 配置文件
wget -O /www/wwwroot/redis/redis.conf https://raw.githubusercontent.com/ridaiqianhe/redis/main/redis.conf

# 检查是否安装了 Docker
if ! command -v docker &> /dev/null
then
    echo "Docker 未安装，请先安装 Docker。"
    exit 1
fi

# 运行 Redis 容器
docker run --restart=always -d \
--name redis \
-p 127.0.0.1:6379:6379 \
-v /www/wwwroot/redis/data:/data \
-v /www/wwwroot/redis/redis.conf:/etc/redis/redis.conf \
redis redis-server /etc/redis/redis.conf

echo "Redis 容器已启动。"
