# Dockerfile for WordPress Application

From centos:centos6.7
MAINTAINER stkhr

RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN yum -y install sudo initscripts 
RUN sed -i 's/Defaults    requiretty/#Defaults    requiretty/g' /etc/sudoers
RUN curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh
ADD td-agent.conf /etc/td-agent/td-agent.conf

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
