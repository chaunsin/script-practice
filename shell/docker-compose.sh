#!/usr/bin/env bash

# 版本自行替换 如果使用官方地址下载则地址不能带有v开头而是采用这种: 2.20.2
VERSION='v2.20.2'

OS=$(uname -s | tr '[:upper:]' '[:lower:]')

URL="http://mirror.azure.cn/docker-toolbox/linux/compose/${VERSION}/docker-compose-${OS}-$(uname -m)"
# URL="https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-${OS}-$(uname -m)"

# 拼接地址下载 如果有问题
echo "$URL"
curl -L "$URL" -o /usr/local/bin/docker-compose

# 赋权
chmod +x /usr/local/bin/docker-compose

# 执行检查
docker-compose -v