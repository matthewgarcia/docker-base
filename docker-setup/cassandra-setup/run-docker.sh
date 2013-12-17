#!/bin/bash

sudo docker build -t cassandra-serv < Dockerfile .
sudo docker run -link mysql:db -i -t cassandra-serv /bin/bash
