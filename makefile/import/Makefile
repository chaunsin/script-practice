
# 导入包,需要指定导入的文件内容,不然会出现是目录错误提示
-include .makerc/ext

export VERSION=1.0.0

# 奇怪执行一个空方法会打印所有的环境变量？
run:
	echo ${VERSION},${NAME},${AGE}

start:
	make -C .makerc start-internal