FROM ubuntu

ADD jdk1.7.0_45 /jdk1.7.0_45
RUN mv jdk1.7.0_45 java
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y install wget
RUN apt-get -y install python2.7
RUN wget http://archive.apache.org/dist/cassandra/1.2.5/apache-cassandra-1.2.5-bin.tar.gz
RUN tar xzf apache-cassandra-1.2.5-bin.tar.gz
RUN mv apache-cassandra-1.2.5 cassandra
env PATH /cassandra/bin:$PATH

ADD setup-cassandra.sh ./setup-cassandra.sh
ENV PATH /java/bin:$PATH
ENV JAVA_HOME /java
EXPOSE 9160

RUN cassandra
RUN chmod +x setup-cassandra.sh
RUN sed -i.bak -e "s#-Xss180k#-Xss228k#g" cassandra/conf/*
