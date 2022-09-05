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

### 2.docker-compose 命令先后执行的顺序

### 3.如何使用docker-compose把容器的文件挂载到(或者说拷贝)到宿主机中？[[1]](https://www.imooc.com/wenda/detail/585444)

### 4.一个docker-compose如何启动多个实例服务？

使用 `docker-compose scale` 子命令 需要注意顺序：

```shell
    docker-compose -f docker-compose-restart.yaml up -d --scale mysevice=3
```

### 5.如何控制或删除容器打印的日志

滚动日志可以配置如下：

```yaml
logging:
  driver: "json-file"
  options:
    # 日志文件大小
    max-size: "200m"
    # 最大日志文件数量
    max-file: "3"
```

删除日志文件

```shell
# 找到对应的日志文件
docker inspect --format='{{.LogPath}}' CONTAINER_ID

# 清理
cat /dev/null > xxx-json.log
```

如果需要清理所有的服务日志则可以使用一下脚本

[>>>脚本<<<](../docker/clear-docker-log.sh)

# 总结

# 参考

[1] https://www.imooc.com/wenda/detail/585444