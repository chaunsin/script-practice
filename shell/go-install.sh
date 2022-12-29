#!/usr/bin/env bash

# 版本
VERSION="1.15.15"

# 系统 darwin windows
OS=$(uname -s)

# 获取芯片架构 比如amd64
architecture=""
case $(uname -m) in
    i386)   architecture="386" ;;
    i686)   architecture="386" ;;
    x86_64) architecture="amd64" ;;
    arm)    dpkg --print-architecture | grep -q "arm64" && architecture="arm64" || architecture="arm" ;;
esac

# 转换成小写
function lower()
{
    LOWER_CASE=$(echo ${1} | tr '[A-Z]' '[a-z]')
    echo ${LOWER_CASE}
}

function main() {
  addr=$(https://golang.google.cn/dl/go${VERSION}.$(lower "$OS")-${architecture}.tar.gz)
  echo "$addr"
#  curl -o $(addr)
#  curl $addr
#  curl https://golang.google.cn/dl/go1.15.15.darwin-amd64.tar.gz
  curl -o https://dl.google.com/go/go1.15.15.darwin-amd64.tar.gz
}

main