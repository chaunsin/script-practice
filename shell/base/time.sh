#!/usr/bin/env bash

# 获取当前默认格式时间
# 不标准写法
#a=`date`
#echo "$a"

b=$(date)
echo "$b"

# --------------- 格式化 ----------------
# 1. date后面有空格

# 20210419142611
c=$(date "+%Y%m%d%H%M%S")
echo "$c"

# 2021-04-19 14:28:20
d=$(date "+%Y-%m-%d %H:%M:%S")
echo "$d"

# 2021.04.19
e=$(date "+%Y.%m.%d")
echo "$e"
