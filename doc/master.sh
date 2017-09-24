#!/bin/bash

apt-get update;

<<<<<<< HEAD
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D;

echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list;
=======
apt-get remove docker docker-engine docker.io;

apt-get update;

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common;

curl -fsSL 'https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | apt-key add - ;

add-apt-repository \
   "deb [arch=amd64] https://packages.docker.com/1.12/apt/repo/ \
   ubuntu-$(lsb_release -cs) \
   main" ;
>>>>>>> f0dbb0d566149969cdd9aab48a5a70bb534105f8

apt-get update ;

apt-get install linux-image-extra-$(uname -r);

apt-get install docker-engine;

apt-get update ;

apt install aptitude;

<<<<<<< HEAD
aptitude install git make -y;

git clone http://gerrit.hyperledger.org/r/cello && cd cello ;
=======
docker pull python:3.5 \ 
 docker pull mongo:3.2 \
 docker pull yeasy/nginx:latest \
 docker pull mongo-express:0.30 ;
>>>>>>> f0dbb0d566149969cdd9aab48a5a70bb534105f8

apt install python-pip ;

apt install docker-compose ;

export LC_ALL=C ;

make setup-master;

<<<<<<< HEAD
make start;
=======
make restart;

apt install w3m;
>>>>>>> f0dbb0d566149969cdd9aab48a5a70bb534105f8
