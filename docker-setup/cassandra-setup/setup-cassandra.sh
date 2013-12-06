#!/bin/bash

cd cassandra
mkdir -p /var/log/cassandra
mkdir -p /var/lib/cassandra
cd bin
cassandra
sleep 5
