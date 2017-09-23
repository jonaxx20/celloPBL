#!/bin/bash

apt-get update;

apt-get install --no-install-recommends \
    apt-transport-https \
    curl \
    software-properties-common;

curl -fsSL 'https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | sudo apt-key add - ;

add-apt-repository \
   "deb https://packages.docker.com/1.12/apt/repo/ \
   ubuntu-$(lsb_release -cs) \
   main" ;

apt-get update ;

apt-get install docker-ce ;

docker run hello-world ;

apt-get install aptitude ;

aptitude install git make -y ;

git clone https://github.com/yeasy/cello && cd cello ;

docker pull python:3.5 \ 
	&& docker pull mongo:3.2 \
	&& docker pull yeasy/nginx:latest \
	&& docker pull mongo-express:0.30 ;

apt install python-pip ;

apt install docker-compose ;

export LC_ALL=C ;

make setup ;

make redeploy service=dashboard ;

make restart
