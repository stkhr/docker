# Dockerfile for WordPress Application

From centos:centos6.7
MAINTAINER stkhr

ENV WP_ver wordpress-4.4.2-ja.tar.gz
ENV WP_path /var/www/wordpress
ENV WP_DBNAME wordpress
ENV WP_DBUSER wordpress
ENV WP_DBPASS wp4mysql
ENV WP_DBHOST mysql01

RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum install -y nginx wget tar php-mysql php-common php php-cgi php-fpm php-gd php-mbstring
ADD php.ini /etc/php.inils
ADD www.conf /etc/php-fpm.d/www.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
RUN htpasswd -c -b /etc/nginx/conf.d/.htpasswd username password
ADD create_wp.sh /usr/local/bin/create_wp.sh
RUN chmod u+x /usr/local/bin/create_wp.sh && /usr/local/bin/create_wp.sh

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
