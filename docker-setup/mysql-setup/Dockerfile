FROM ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
ADD ./mysql-setup.sh /mysql-setup.sh
ADD ./mysql-run.sh /mysql-run.sh
ADD ./create-database.sql /create-database.sql

EXPOSE 3306

