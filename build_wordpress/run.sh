#!/bin/bash

# version
. ./version.txt

#docker run
docker run -itd -m 512m \
           --log-driver=fluentd \
           --log-opt=fluentd-address=localhost:24224 \
           --log-opt=fluentd-tag=docker.{{.Name}} \
           --name mysql01 \
           --expose 3306 \
           stkhr/mysql:ver${mysql_ver}

docker run -itd -m 256m \
           -p 8080:80 \
           --link mysql01:db \
           --log-driver=fluentd \
           --log-opt=fluentd-address=localhost:24224 \
           --log-opt=fluentd-tag=docker.{{.Name}} \
           --name wordpress \
           stkhr/wordpress:ver${wordpress_ver}
