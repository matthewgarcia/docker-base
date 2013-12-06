#!/bin/sh

ssh vagrant@192.168.50.5 mkdir oozie-dir
scp setup-oozie.sh vagrant@192.168.50.5:oozie-dir/.
scp mysql-connector-java-5.1.25.jar vagrant@192.168.50.5:oozie-dir/.
scp core-site.xml vagrant@192.168.50.5:oozie-dir/.
scp Dockerfile vagrant@192.168.50.5:oozie-dir/.
scp run-oozie.sh vagrant@192.168.50.5:oozie-dir/.
scp run-docker.sh vagrant@192.168.50.5:oozie-dir/.

ssh vagrant@192.168.50.5 chmod +x oozie-dir/run-docker.sh
ssh vagrant@192.168.50.5 './oozie-dir/run-docker.sh'
