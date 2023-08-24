#!/usr/bin/env bash

# 版本
VERSION="1.15.15"

# 系统 darwin windows
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

# 获取芯片架构 比如amd64
architecture=""
case $(uname -m) in
    i386)   architecture="386" ;;
    i686)   architecture="386" ;;
    x86_64) architecture="amd64" ;;
    arm)    dpkg --print-architecture | grep -q "arm64" && architecture="arm64" || architecture="arm" ;;
esac

# 下载地址
URL="https://golang.google.cn/dl/go${VERSION}.${OS}-${architecture}.tar.gz"
echo "$URL"
curl -LO "$URL"
#  curl -LO https://dl.google.com/go/go1.15.15.darwin-amd64.tar.gz


# 步骤一: tar -C /usr/local -xzf go1.14.src.tar.gz
# 步骤二:
# vim /etc/profie
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin
# export GOPROXY=https://goproxy.cn,direct
# export GO111MODULE=off
# export GOPATH=
# 步骤三:
# source /etc/profie