#!/usr/bin/env bash

# -n 代表不换行输出
echo -n "123"
echo "456"
echo -n "789"
echo "0"

# OUTPUT:
# 123456
# 7890

# -e 代表处理 \a \r \n \t \v 等谓词处理
echo -e "hello shell \n"
echo "end"

# OUTPUT:
# hello shell
# ''
# end