#!/usr/bin/env bash

# --------------------定义数组---------------------
# 1.数组没有长度限制
# 2.数组下标可以不连续
var="变量"
a=(1 "2" "$var" 4 5)
# 如果不指定下标则默认打印索引位置为1的数据
echo "$a"
# 同上
echo "${a}"
# 打印索引位置为2的数据
echo "${a[2]}"
# 打印一个不存在的索引数据不会报错
echo "${a[9]}"
# @符号表示打印数组所有的元素
echo "${a[@]}"
# 如果通过索引访问必须指定{}的方式,不然会出现数组索引位置0的元素和[2]进行拼接的字符串
echo "$a[2]"

# OUTPUT:
# 1
# 1
# 变量
# ''
# 1 2 变量 4 5
# 1[2]