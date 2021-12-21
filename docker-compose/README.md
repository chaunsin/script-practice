# docker-compose 学习

# 命令

### 1.指定docker-compose镜像文件启动服务
```shell
    docker-compose -f docker-compose-nginx.yaml up -d
```
ps:注意命令的先后顺序,不然会出现命令无法执行的情况,会打印输出提示命令怎么使用

# 问题

### 1. 没有镜像是否可以使用现有的镜像从网络上拉取？
可以,当本地没有镜像时,则先拉取指定的镜像版本到本地然后在启动服务。

### 2.


# 总结

# 参考