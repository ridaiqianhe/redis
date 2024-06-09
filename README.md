# Docker 一键安装 Redis

使用 Docker 一键安装 Redis，效果等同于 `apt install redis-server`

**使用方法：**

首先，确保已安装 Docker，然后运行以下命令来启动 Redis 容器：

```bash
curl -sL https://raw.githubusercontent.com/ridaiqianhe/redis/main/redis.sh -o redis.sh && bash ./redis.sh
