#!/bin/sh

vagrant ssh -c "cd /vagrant/mysql-setup ; docker build -t mysql-serv < Dockerfile ."
vagrant ssh -c "cd /vagrant/mysql-setup ; sudo docker run -name mysql -d -p 33306:3306 -i -t mysql-serv mysql-setup.sh"
