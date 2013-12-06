#!/bin/bash

cd hadoop-dir
sudo docker build -t hadoop-serv < Dockerfile .
sudo docker run -i -t hadoop-serv /bin/bash

