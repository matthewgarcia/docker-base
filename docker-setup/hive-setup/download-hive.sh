#!/bin/bash

apt-get -y install wget
apt-get -y install python2.7
wget http://archive.apache.org/dist/hive/hive-0.11.0/hive-0.11.0-bin.tar.gz
wget http://archive.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xzf hive-0.11.0-bin.tar.gz
tar xzf apache-maven-3.0.5-bin.tar.gz
mv apache-maven-3.0.5 maven
mv hive-0.11.0-bin hive

