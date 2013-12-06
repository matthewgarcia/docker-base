#!/bin/sh

vagrant up
ssh vagrant@192.168.50.5 mkdir -p .ssh
cat ~/.ssh/id_rsa.pub | ssh vagrant@192.168.50.5 'cat >> .ssh/authorized_keys'

ssh vagrant@192.168.50.5 sudo apt-get update
ssh vagrant@192.168.50.5 sudo apt-get -y install linux-image-generic-lts-raring linux-headers-generic-lts-raring
ssh vagrant@192.168.50.5 sudo reboot
vagrant up

ssh vagrant@192.168.50.5 sudo sh -c "curl https://get.docker.io/gpg | apt-key add -"
ssh vagrant@192.168.50.5 sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
ssh vagrant@192.168.50.5 sudo apt-get update
ssh vagrant@192.168.50.5 sudo apt-get install lxc-docker

ssh vagrant@192.168.50.5 sudo docker pull ubuntu
ssh vagrant@192.168.50.5 sudo docker pull dhrp/sshd

scp -r config vagrant@192.168.50.5:config
