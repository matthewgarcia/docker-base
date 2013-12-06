#!/bin/bash -e

apt-get install zip unzip
rm hadoop/conf/core-site.xml
mv core-site.xml hadoop/conf
./run-hadoop.sh
wget https://mustard-grain-dev.s3.amazonaws.com/bin/oozie-4.0.0-bin.tar.gz
tar xzf oozie-4.0.0-bin.tar.gz
rm oozie-4.0.0-bin.tar.gz
cd oozie-4.0.0
 
# Copy shared directory to HDFS, but first updating Hive libraries with our versions
tar xzf oozie-sharelib-4.0.0.tar.gz
rm share/lib/hive/*
cp /hive/lib/*.jar share/lib/hive
cp /mysql-connector-java-5.1.25.jar share/lib/hive
hadoop fs -put share share
rm -rf share

./bin/oozie-setup.sh prepare-war
./bin/ooziedb.sh create -run
