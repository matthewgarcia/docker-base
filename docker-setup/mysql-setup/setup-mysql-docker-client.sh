#!/bin/sh

vagrant ssh -c "cd /vagrant/mysql-setup ; docker build -t mysql-serv < Dockerfile ."
vagrant ssh -c "cd /vagrant/mysql-setup ; docker run -link mysql -i -t mysql-serv mysql-setup.sh"
