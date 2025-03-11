#!/bin/bash

# GitHub 原始文件地址
GITHUB_RAW_URL="https://raw.githubusercontent.com/jl825741/traffmonetizer/main/traffmonetizer.sh"

# 下载并执行
if command -v curl &> /dev/null; then
    bash <(curl -fsSL "$GITHUB_RAW_URL")
elif command -v wget &> /dev/null; then
    wget -qO- "$GITHUB_RAW_URL" | bash
else
    echo "Error: Neither curl nor wget is installed. Please install one of them first."
    exit 1
fi
