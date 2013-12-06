#!/bin/sh

ssh vagrant@192.168.50.5 mkdir cassandra-dir
scp setup-cassandra.sh vagrant@192.168.50.5:cassandra-dir/.
scp -r jdk1.7.0_45 vagrant@192.168.50.5:cassandra-dir/.
scp setup-databases.sh vagrant@192.168.50.5:cassandra-dir/.
scp run-docker.sh vagrant@192.168.50.5:cassandra-dir/run-docker.sh
scp Dockerfile vagrant@192.168.50.5:cassandra-dir/.
scp -r cql vagrant@192.168.50.5:cassandra-dir/.

ssh vagrant@192.168.50.5 chmod +x cassandra-dir/run-docker.sh
ssh vagrant@192.168.50.5 './cassandra-dir/run-docker.sh'
