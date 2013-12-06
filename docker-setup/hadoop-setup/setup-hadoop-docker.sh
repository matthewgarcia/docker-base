#!/bin/sh

ssh vagrant@192.168.50.5 mkdir hadoop-dir
scp hadoop-init.sh vagrant@192.168.50.5:hadoop-dir/hadoop-init.sh
scp hadoop-clean-tmp-files.sh vagrant@192.168.50.5:hadoop-dir/hadoop-clean-tmp-files.sh
scp run-hadoop.sh vagrant@192.168.50.5:hadoop-dir/run-hadoop.sh
scp hadoop-local-conf.sh vagrant@192.168.50.5:hadoop-dir/hadoop-local-conf.sh
scp run-docker.sh vagrant@192.168.50.5:hadoop-dir/run-docker.sh
scp Dockerfile vagrant@192.168.50.5:hadoop-dir/Dockerfile
scp -r jdk1.7.0_45 vagrant@192.168.50.5:hadoop-dir/jdk1.7.0_45
scp download-hadoop.sh vagrant@192.168.50.5:hadoop-dir/download-hadoop.sh
ssh vagrant@192.168.50.5 chmod +x hadoop-dir/run-docker.sh
ssh vagrant@192.168.50.5 './hadoop-dir/run-docker.sh'
