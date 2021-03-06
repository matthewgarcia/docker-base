#!/bin/sh

vagrant up

vagrant ssh -c "sudo apt-get update"
vagrant ssh -c "sudo apt-get -y install curl linux-image-generic-lts-raring linux-headers-generic-lts-raring"

vagrant reload

vagrant ssh -c "curl https://get.docker.io/gpg | sudo apt-key add -"
vagrant ssh -c "sudo sh -c 'echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list'"
vagrant ssh -c "sudo apt-get update"
vagrant ssh -c "sudo apt-get -y install lxc-docker"

vagrant ssh -c "sudo docker pull ubuntu"
vagrant ssh -c "sudo docker pull dhrp/sshd"
