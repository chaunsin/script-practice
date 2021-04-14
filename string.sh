#!/usr/bin/env bash

# --------------单引号字符串------------
a='这是个字符串'
echo "$a"

# 单引号字符串是原样输出的变量是不生效的
echo '禁止使用双引号变量在单引号内:"$a"'
aa='使用单引号拼接的变量在单引号内:'$a''
echo "$aa"

# OUTPUT:
# 这是个字符串
# 禁止使用变量在单引号内"$a"

# -------------双引号字符串------------
# 1.双引号里面可以有变量
# 2.双引号里面可以有转义字符
b="shell"
str="hello \"$b\"! \n"
echo -e "$str"

# OUTPUT:
# hello "shell"!
# ""

# ---------------字符串拼接------------
c="shell"
# 使用双引号拼接
greeting="hello, $c !"
greeting_1="hello, ${c} !"
echo "$greeting""$greeting_1"
# 使用单引号拼接
greeting_2='hello, '$c' !'
greeting_3='hello, ${c} !'
echo "$greeting_2" "$greeting_3"

# OUTPUT:
# hello, shell !hello, shell !
# hello, shell ! hello, ${c} !

# --------------字符串长度----------------
# #号不光有注释的作用还有获取长度的作用,获取数组长度也是用过#号
d="shell"
echo "${#d}"
# 不带{}则获取长度错误
echo "$#d"

# OUTPUT:
# 5
# 0d

# ----------------字符串截取----------------
# 3代表表起始索引,5代表从3index开始在加5个
e="hello shell!"
echo "${e:3}"
echo "${e:3:5}"
echo "${e:0:3}"
