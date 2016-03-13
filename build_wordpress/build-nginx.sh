#!/bin/bash

#initialize
mysql_ver=1.0
wordpress_ver=1.0

#build
docker build -t stkhr/mysql:ver${mysql_ver} ./mysql
docker build -t stkhr/wordpress:ver${wordpress_ver} ./nginx
