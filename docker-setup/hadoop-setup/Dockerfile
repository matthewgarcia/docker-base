FROM ubuntu 

ADD ./jdk1.7.0_45 /jdk1.7.0_45
ADD ./download-hadoop.sh /download-hadoop.sh
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y install wget 
RUN apt-get -y install openssh-server
RUN apt-get -y install openssh-client
RUN mkdir /var/run/sshd
RUN su root ./download-hadoop.sh 

ADD ./hadoop-local-conf.sh hadoop-local-conf.sh
ADD ./run-hadoop.sh run-hadoop.sh
ADD ./hadoop-init.sh hadoop/bin/hadoop-init.sh
ADD ./hadoop-clean-tmp-files.sh hadoop/bin/hadoop-clean-tmp-files.sh

ENV PATH /java/bin:/hadoop/bin:$PATH
ENV JAVA_HOME /java
ENV HADOOP_HOME /hadoop

RUN chmod +x run-hadoop.sh
RUN chmod +x hadoop-local-conf.sh
RUN ./hadoop-local-conf.sh /hadoop/conf /hadoop-data
RUN mkdir -p .ssh
RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa -q 
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

EXPOSE 2020
