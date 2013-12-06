#!/bin/bash

cd cassandra
mkdir -p /var/log/cassandra
mkdir -p /var/lib/cassandra
cd bin
cassandra
sleep 5
./setup-databases.sh localhost cql redlaser 1
