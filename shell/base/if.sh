#!/usr/bin/env bash

# 判断字符串是否为空
empty=""
a=$([ -z $empty ])
echo $a

function isFile() {
  file=./var.sh
  if [ -f $file ]; then
    echo "file ${file} is exist"
  else
    echo "file not found"
    exit 1
  fi
}

function system() {
  SYSTEM=$(uname -s)

  # 1. 字符串比较 = 和 == 是等价的推荐使用==可读性更高
  if [ $SYSTEM = "Linux" ]; then
    echo "linux"
  elif [ $SYSTEM == "FreeBSD" ]; then
    echo "freebsd"
  elif [ $SYSTEM == "Windows" ]; then
    echo "windows"
  elif [ $SYSTEM == "Solaris" ]; then
    echo "solaris"
  elif [ $SYSTEM == "Darwin" ]; then
    echo "Darwin"
  else
    echo "unknown $SYSTEM"
  fi

  # output:
  # Darwin
}

isFile
system
