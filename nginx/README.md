# nginx 

# 问题

### 1.server 服务配置不生效原因
1.如果是在nginx/conf.d/目录下配置,一个文件中有多个server配置块则不会生效。貌似是只有第一个server生效