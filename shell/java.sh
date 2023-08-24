

export JAVA_HOME=/usr/local/jdk1.8.0_381
export JRE_HOME=/usr/local/jdk1.8.0_381/jre
export CLASSPATH=.:$JAVA_HOME/lib:/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$PATH:$JAVA_HOME/bin
# 动态链接库
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/jdk1.8.0_381/jre/lib/amd64/server