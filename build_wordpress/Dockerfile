# Dockerfile for Wordpress

From centos:centos6.7
MAINTAINER stkhr

RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm && rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && yum install -y nginx wget tar httpd-tools && yum -y --enablerepo=remi-php56,remi,epel install php php-mysql php-mbstring php-xml php-pdo php-mcrypt php-pecl-memcache php-pgsql php-fpm
ADD nginx.conf /etc/nginx/nginx.conf
ADD config /etc/nginx/conf.d/
ADD contents /var/www/
ADD create_htpasswd.sh /usr/local/bin/create_htpasswd.sh
RUN chmod u+x /usr/local/bin/create_htpasswd.sh && /usr/local/bin/create_htpasswd.sh
ADD php.ini /etc/php.ini
ADD www.conf /etc/php-fpm.d/www.conf

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
