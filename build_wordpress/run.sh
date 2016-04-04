#!/bin/bash

# version
. ./version.txt

##docker run for docker log driver
#docker run -itd -m 512m \
#           --log-driver=fluentd \
#           --log-opt=fluentd-address=localhost:24224 \
#           --log-opt=fluentd-tag=docker.{{.Name}} \
#           --name mysql01 \
#           --expose 3306 \
#           stkhr/mysql:ver${mysql_ver}

#docker run -itd -m 256m \
#           -p 8080:80 \
#           --link mysql01:db \
#           --log-driver=fluentd \
#           --log-opt=fluentd-address=localhost:24224 \
#           --log-opt=fluentd-tag=docker.{{.Name}} \
#           --name wordpress \
#           stkhr/wordpress:ver${wordpress_ver}

##docker run

docker run -itd -m 512m \
           -h mysql01 \
           -v /var/log/docker/mysql01:/var/log \
           --name mysql01 \
           --expose 3306 \
           stkhr/mysql:ver${mysql_ver}

docker run -itd -m 256m \
           -p 8080:80 \
           --link mysql01:db \
           -h nginx01 \
           -v /var/log/docker/wordpress:/var/log \
           --name wordpress \
           stkhr/wordpress:ver${wordpress_ver}

