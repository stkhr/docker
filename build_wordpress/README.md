# wordpress docker
## how to use
## install centos container 
docker pull centos:centos6.7

## build & First start
### wordpress with apache
sh build-apache.sh  
sh run.sh

### wordpress with nginx
sh build-nginx.sh  
sh run.sh

## after Fisrt Start
if you run 'docker commit CONTAINER REPOSITORY[:TAG]]', you should update 'version.txt'

