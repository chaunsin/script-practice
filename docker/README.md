# docker 教程

# 命令
### 1.从容器中拷贝指定文件到宿主机，前提容器需要启动
```shell
    docker cp temp-nginx:/usr/share/nginx/html ./nginx/html
```
- temp-nginx:代表正在运行的镜像名称
- /usr/share/nginx/html:容器内的目录
- ./nginx/html:宿主机的目录

### 2.进入到容器内
```shell
    docker exec -it 2edb104a5abc49f36f3bb4db729d0dd0e5150c0dd60f8549721e72e4f86d164f /bin/sh
```
- exec:
- -i:交互式
- -t:
- 2edb10***164f:容器id

# 问题

### 1.docker在同一网络下是否允许端口重复？比如一个服务多节点场景

# 总结

# 参考