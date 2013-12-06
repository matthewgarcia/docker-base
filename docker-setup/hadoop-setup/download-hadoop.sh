#!/bin/bash

wget http://archive.apache.org/dist/hadoop/core/hadoop-1.0.3/hadoop-1.0.3.tar.gz
tar xzf hadoop-1.0.3.tar.gz
mv jdk1.7.0_45 java
mkdir hadoop-data
mv hadoop-1.0.3 hadoop
