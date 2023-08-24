#!/usr/bin/env bash

VERSION='3.3.9'

# 下载
#wget http://mirrors.cnnic.cn/apache/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz
wget https://archive.apache.org/dist/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz
# 解压
tar vxf apache-maven-${VERSION}-bin.tar.gz
mv apache-maven-${VERSION} /usr/lib/maven

# 配置环境变量
#export MAVEN_HOME=/usr/lib/maven
#export PATH=${PATH}:${MAVEN_HOME}/bin

#source /etc/profile

# 测试
#mvn -v