#!/usr/bin/env bash

function restart() {
  #kill -9 $(ps -ef | grep main)
  kill -u main
  sleep 1
  nohup ./main >nohup.log 2>&1 &
}

function run() {
    go mod tidy
    go build main.go
    restart
}