#!/bin/bash

cd oozie-dir
sudo docker build -t oozie-serv < Dockerfile .
sudo docker run -i -t oozie-serv /bin/bash

