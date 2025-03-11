#!/bin/bash

# 更新系统并安装必要依赖
echo "正在更新系统并安装依赖..."
apt update -y && apt install -y curl wget sudo unzip scout

# 安装 Docker
echo "正在安装 Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# 运行 traffmonetizer
echo "正在运行 traffmonetizer..."
docker run -d --name tm traffmonetizer/cli_v2 start accept --token sq66U87FCCP7uhBviouZXi450tXtsv+tEGufLHev7dg=

echo "traffmonetizer 已成功安装并运行！"
