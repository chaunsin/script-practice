package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"time"

	"github.com/gin-gonic/gin"
)

const addr = ":8080"

// hello
func hello(ctx *gin.Context) {
	data := map[string]interface{}{
		"name": ctx.DefaultQuery("user", "游客"),
		"date": time.Now(),
		"addr": fmt.Sprintf("%s/v1/panic", addr),
	}
	ctx.HTML(http.StatusOK, "index.tmpl", data)
}

func exit(ctx *gin.Context) {
	os.Exit(1)
}

func main() {
	engine := gin.Default()
	engine.LoadHTMLGlob("./web/static/*")
	v1 := engine.Group("/v1")
	{
		// 127.0.0.1:8080/v1/hello?user=xxx
		v1.GET("/hello", hello)
		v1.GET("/panic", exit)
	}
	if err := engine.Run(addr); err != nil {
		log.Fatalf("gin run err:%s", err)
	}
}
