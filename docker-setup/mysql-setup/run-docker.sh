#!/bin/bash

sudo docker build -t mysql-server - < Dockerfile
sudo docker run -i -t mysql-server /bin/sh mysql-run.sh
