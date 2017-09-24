#!/bin/bash

apt-get update;

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D;

echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list;

apt-get update ;

apt-get install linux-image-extra-$(uname -r);

apt-get install docker-engine;

apt-get update ;

apt install aptitude;

aptitude install git make -y;

git clone http://gerrit.hyperledger.org/r/cello && cd cello ;

apt install python-pip ;

apt install docker-compose ;

export LC_ALL=C ;

make setup-master;

make start;
