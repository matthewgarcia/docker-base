#!/bin/bash -e

./stop-all.sh
sleep 5
./hadoop-clean-tmp-files.sh
hadoop namenode -format
