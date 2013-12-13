#!/bin/bash

docker build -t mysql-server - < Dockerfile
docker run -p 33306:3306 -i -t mysql-server 
