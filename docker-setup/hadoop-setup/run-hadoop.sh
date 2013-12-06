#!/bin/bash

/usr/sbin/sshd -D &
cd hadoop/bin
./hadoop-init.sh
./start-all.sh
