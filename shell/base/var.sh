#!/usr/bin/env bash

a="hello shell"
echo "$a"

a="hello sh"
echo "${a}"

# 执行go语言的命令行,查看语言当前版本并把执行的结果赋值给a
a=$(go version)
echo $a

# output:
# hello shell
# hello sh
# go version go1.17.3 darwin/amd64

################# 变量修饰符 ################
# readonly 变量只能进行读取不能进行修改
readonly b="read only var"
echo "$b"
#b="try overwrite"
echo "$b"

# output:
# read only var
# var.sh: line 15: b: readonly variable

# unset 对变量进行删除,但是不能对readonly变量进行使用,会报错.
readonly c="unset read only var"
unset c
echo "$c"

d="unset var"
echo "$d"
unset d
echo "$d"

# OUTPUT:
# var.sh: line 26: unset: c: cannot unset: readonly variable
# unset read only var
# unset var
# "" //注意是空不是""为了区分,实则没有任何输出

################# 变量类型 ###################
# 1.局部变量
local e="局部变量"

# 2.环境变量

# 3.shell变量
