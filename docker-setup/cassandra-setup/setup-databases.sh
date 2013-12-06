#!/bin/bash
which cqlsh > /dev/null

if [ $? -ne 0 ] ; then
  echo "Could not find cqlsh"
  echo "Please ensure that you have Cassandra's bin directory on your PATH before running"
  exit 1
fi

if [ $# -ne 4 ] ; then
  echo "Usage: $0 <Cassandra Host> <CQL directory> <keyspace name> <replication factor>"
  exit 2
fi

host=$1
cqldir=$2
keyspace=$3
replication=$4

cd $cqldir

cat keyspace.cql | sed "s/<keyspace>/$keyspace/g" | sed "s/<replication>/$replication/g" | cqlsh -3 $host

cqlsh -3 -k $keyspace -f pricing.cql $host
cqlsh -3 -k $keyspace -f productview.cql $host
cqlsh -3 -k $keyspace -f showroom.cql $host
cqlsh -3 -k $keyspace -f store-alert-showroom.cql $host

