#!/usr/bin/env bash

# read -r 命令从标准输入中读取一行
# -p 输入提示文字
read -p "please enter your name:" -r name
echo Hello "$name"
# OUTPUT:
# Hello world

# -t 代表等待数据命令时间
# -s 隐藏输入的内容,常用语输入密码
if read -t 5 -s -p "please enter your password:" -r password; then
  echo "$password"
else
  echo "time out!"
fi

# -n 代表限制输入参数的数量,以空格进行分割参数
read -n1 -p "Yes or no [Y/N]:" -r answer
case $answer in
Y | y) echo "ok" ;;
N | n) echo "no" ;;
*) echo "error choice" ;;
esac
