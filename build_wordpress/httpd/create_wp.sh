#!/bin/bash -x

DB_ADDRESS=`echo ${WP_DBHOST}`

# download wordpress
cd /usr/local/src
wget https://ja.wordpress.org/${WP_ver}
tar zxvf ${WP_ver}

mv wordpress ${WP_path}
chown -R apache:apache /var/www/wordpress

# httpd setting
cd ${WP_path}
cp wp-config-sample.php wp-config.php
sed -i -e "s/database_name_here/${WP_DBNAME}/g" -e "s/username_here/${WP_DBUSER}/g" -e "s/password_here/${WP_DBPASS}/g" -e "s/localhost/${WP_DBHOST}/g" ${WP_path}/wp-config.php

#for var in `curl https://api.wordpress.org/secret-key/1.1/salt/`
#do
#  sed -i -e "/put your unique phrase here/s/.*/${var}/g" ${WP_path}/wp-config.php
#done
