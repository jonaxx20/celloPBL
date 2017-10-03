#!/bin/bash
apt-get update -y; 
apt-get install --reinstall ubuntu-desktop -y;
apt-get update -y; 
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D;
 echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list; 
apt-get update -y; 
apt-get install linux-image-extra-$(uname -r); 
apt-get install docker-engine; apt-get update ; 
apt install aptitude -y; aptitude install git make -y;
 git clone http://gerrit.hyperledger.org/r/cello && cd cello ;
 apt install python-pip -y;
 apt install docker-compose -y;
 export LC_ALL=C ;
