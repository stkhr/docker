# Dockerfile for mysqld Application

From centos:centos6.7
MAINTAINER stkhr

RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm && yum -y install mysql-server mysql mysql-devel
ADD my.cnf /etc/my.cnf
ADD create_mysql.sh /usr/local/bin/create_mysql.sh
RUN chmod u+x /usr/local/bin/create_mysql.sh && /usr/local/bin/create_mysql.sh

## For log driver
#RUN ln -sf /dev/stderr /var/log/mysqld.log

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
