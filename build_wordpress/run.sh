#!/bin/bash

#initialize
mysql_ver=1.0
wordpress_ver=1.0

#build
docker build -t stkhr/mysql:ver${mysql_ver} ./mysql
docker build -t stkhr/wordpress:ver${wordpress_ver} ./httpd

#docker run
docker run -itd --name mysql01 --expose 3306 stkhr/mysql:ver${mysql_ver}
docker run -itd -p 8080:80 --link mysql01:db --name wordpress stkhr/wordpress:ver${wordpress_ver}
