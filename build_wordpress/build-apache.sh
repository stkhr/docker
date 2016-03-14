#!/bin/bash

#initialize
. ./version.txt

#build
docker build -t stkhr/mysql:ver${mysql_ver} ./mysql
docker build -t stkhr/wordpress:ver${wordpress_ver} ./httpd
