#!/bin/sh

# 用于清理正在运行的docker docker-compose服务的日志,清理完之后不影响服务运行无需重启
echo "======== start clean docker containers logs ========"
logs=$(find /var/lib/docker/containers/ -name *-json.log)
for log in $logs; do
  echo "clean logs : $log"
  cat /dev/null >$log
done
echo "======== end clean docker containers logs ========"
