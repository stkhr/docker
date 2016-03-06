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
RUN yum install -y httpd php php-mysql tar wget php-gd
ADD httpd.conf /etc/httpd/conf/httpd.conf
ADD create_wp.sh /usr/local/bin/create_wp.sh
RUN chmod u+x /usr/local/bin/create_wp.sh && /usr/local/bin/create_wp.sh
ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
