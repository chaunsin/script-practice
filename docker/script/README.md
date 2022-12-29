# script

# 1.清理已经停止的容器

```shell
docker rm -v $(docker ps --all --quiet --filter 'status=exited')
```

# 参考

https://www.zhiu.cn/73334.html