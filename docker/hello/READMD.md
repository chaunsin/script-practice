# docker入门例子

## FORM

## RUN

### 作用

1. 用来执行命令比如 pwd mkdir cp等

### 规则模式
1. 命令在shell中运行也叫shell模式 RUN <command>(shell形式,命令在shell中运行,默认情况下/bin/sh -c在Linux或cmd /s /c Windows上运行)
2. 表格模式,exec执行其他不是shell命令(当然此命令可以调用shell命令)

### 执行限制
1.没有执行次数限制

### .dockerignore

### 作用
1. 在构建镜像时,会忽略文件以及目录,其目的就是不让文件及目录ADD 或 COPY命令到镜像中。
2. 比如我在本地机器开发测试中,为了方便放了很多脚本,敏感的配置文件等,可以配置
想要忽略的文件或目录,在构建镜像时这些内容就不会打包到镜像中
3. 此文件的作用和.gitignore是一样的语法也一样

## FQA
### RUN CMD 命令有何差别？

### ADD COPY 命令有何差别？

### ENV ARG 变量有何差别？