#!/bin/bash

cd cassandra-dir
sudo docker build -t cassandra-serv < Dockerfile .
sudo docker run -i -t cassandra-serv /bin/bash

