#!/bin/sh

ssh vagrant@192.168.50.4 docker run -i -t mysql-serv /bin/sh mysql-run.sh
