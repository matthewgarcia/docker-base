FROM ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
ADD ./mysql-setup.sh /mysql-setup.sh
ADD ./mysql-run.sh /mysql-run.sh

RUN /bin/sh ./mysql-setup.sh
EXPOSE 3306

