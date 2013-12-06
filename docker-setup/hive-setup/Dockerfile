FROM hadoop-serv

ADD download-hive.sh /download-hive.sh

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN su root /download-hive.sh

ENV PATH /hive/bin:/maven/bin:$PATH
