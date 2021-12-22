FROM golang:alpine

# 标明作者是谁
MAINTAINER jcx "906591446@qq.com"

# 为我们的镜像设置必要的环境变量
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
	GOPROXY="https://goproxy.cn,direct"

# 将代码复制到容器中 /hello/* -> /workspace/
COPY . /workspace

# 代码运行的地方
WORKDIR /workspace

# 将我们的代码编译成二进制可执行文件可执行文件名为app
RUN go build -o app .

# 声明服务端口
EXPOSE 8080

# 启动容器时运行的命令
CMD ["/workspace/app"]