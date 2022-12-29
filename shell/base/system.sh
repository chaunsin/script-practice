#!/usr/bin/env bash

# 获取系统类型 windows linux darwin
OS=$(uname -s)
# 架构类型 x64
VER=$(uname -m)

echo $(uname -a),$(OS),$(VER)