#!/bin/bash

cd mysql-dir
sudo docker build -t mysql-serv < Dockerfile .
sudo docker run -i -t mysql-serv /bin/sh mysql-run.sh
