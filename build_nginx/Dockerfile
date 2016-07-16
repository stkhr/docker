# Dockerfile for NGINX

From centos:centos6.7
MAINTAINER stkhr

RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm && yum install -y nginx
ADD nginx.conf /etc/nginx/nginx.conf
ADD config /etc/nginx/conf.d/

## For log driver
#RUN ln -sf /dev/stdout /var/log/nginx/access.log
#RUN ln -sf /dev/stderr /var/log/nginx/error.log

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
