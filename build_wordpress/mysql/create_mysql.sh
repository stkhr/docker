#!/bin/bash -x

# mysql setting
service mysqld start
mysql -u root -e "CREATE DATABASE ${DB}; CREATE USER '${DB_USER}'@'172.%' IDENTIFIED BY '${DB_PASS}'; GRANT ALL PRIVILEGES ON ${DB}.* TO '${DB_USER}'@'172.%'; FLUSH PRIVILEGES;"
service mysqld stop
