#!/bin/sh

ssh vagrant@192.168.50.5 mkdir hive-dir
scp download-hive.sh vagrant@192.168.50.5:hive-dir/.
scp Dockerfile vagrant@192.168.50.5:hive-dir/.
scp run-docker.sh vagrant@192.168.50.5:hive-dir/.

ssh vagrant@192.168.50.5 chmod +x hive-dir/run-docker.sh
ssh vagrant@192.168.50.5 './hive-dir/run-docker.sh'
