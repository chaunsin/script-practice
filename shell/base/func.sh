#!/usr/bin/env bash

# 定义一个方法无参数无返回值
function foo() {
  echo "hello foo function!"
}

# 调用方法
foo

# 获取方法参数
function hello() {
  a=$1
  b=$2
  echo "hello $a,$b"
  # 不存在的参数不会报错
  echo "not found $4"
}

# 调用方法传递参数
hello go shell xx

# 返回值的方法
function response() {
  a="hello"
  return a
}

response
echo 