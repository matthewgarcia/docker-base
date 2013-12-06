#!/bin/sh

ssh vagrant@192.168.50.5 mkdir mysql-dir
scp mysql-setup.sh vagrant@192.168.50.5:mysql-dir/mysql-setup.sh
scp mysql-run.sh vagrant@192.168.50.5:mysql-dir/mysql-run.sh
scp run-docker.sh vagrant@192.168.50.5:mysql-dir/run-docker.sh
scp Dockerfile vagrant@192.168.50.5:mysql-dir/Dockerfile
ssh vagrant@192.168.50.5 chmod +x mysql-dir/run-docker.sh
ssh vagrant@192.168.50.5 './mysql-dir/run-docker.sh'
