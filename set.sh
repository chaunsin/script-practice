#!/usr/bin/env bash

# set 什么参数也不加会显示所有的环境变量和shell函数
#set

#### set -x ####
# 用于调试使用. 会打印运行的命令
set -x
# 等价
set -o xtrace

#### set -u ####
# 当声明的变量没有使用时则进行报错
set -u
# 等价
set -o nounset
# 报错 set.sh: line 12: name: unbound variable 并且不会继续往下执行
a=${name}
echo "$a"

#### set -e ####
# 当运行命令时出错则不会在继续进行
set -e
# 等价
set -o errexit
# set +e 关闭set -e操作
set +e
# 再次开启 set -e
set -e
# 当然如果想在开启set -e 情况下执行错误的命令继续执行除了临时修改set +e(关闭),还可以在不关闭情况下继续执行
foo || true

#### set -o pipefail ####
# 这个命令主要是应对管道命令执行出错的情况.当未开启此命令设置时,管道命令执行中间出现错误时会继续执行命令不会中断命令.
# 而set -e命令对管道命令则不会生效,中间执行错误则不会退出执行.只有这个管道命令最后执行的命令出错了才会终止执行,换句话
# 来说,前面命令执行错误了,但是最后一个命令成功了,则set -e是认为是成功的不会终止执行.另外需要配置 set -e使用不然不生效

set -e

# bar会输出继续执行
foo | echo a
echo bar

# hello不会输出终止执行
set -o pipefail
foo | echo b
echo hello

#### 总结 ####
# set命令参数可以进行连起来写
set -euxo pipefail
# 或者
set -eux
set -o pipefail

# 另外这个命令可以以传参数的形式进行设置如:
sh -euxo pipefail script.sh
