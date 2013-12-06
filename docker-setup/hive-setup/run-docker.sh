#!/bin/bash

cd hive-dir
sudo docker build -t hive-serv < Dockerfile .
sudo docker run -i -t hive-serv /bin/bash

