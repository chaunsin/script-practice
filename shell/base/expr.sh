#!/usr/bin/env bash

a=2
b=3

# 相加
echo $((a + b))

# 相乘
echo $((a * b))

# 取整
echo $((a / b))

# 取余
echo $((a % b))

############# 三元表达式 ##############
echo "################ 三元表达式 ##################"
# 长语句表达式,&&的优先级高于||
str=""
def="default"
set="value"
c=$([ -z $str ] && echo $def || echo $set)
echo $c

# 简短模式
d=${1:-"false"}
echo $d

echo $((3 > 2 ? 1 : 0))

# 如果设置了变量则打印str反之打印two
one=""
#one="one"
e=${one:-"two"}
echo $e

# ${1} 相当于取第一个参数值
function IF() {
  value=${1:-"hello"}
  echo $value
}

IF
IF shell
