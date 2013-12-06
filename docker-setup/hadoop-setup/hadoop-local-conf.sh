#!/bin/sh

if [ `uname` = 'Linux' ] ; then
  SED_OPTS="-i.bak -e"
elif [ `uname` = 'Darwin' ] ; then
  SED_OPTS="-i .bak -e"
fi

if [ $# -lt 2 ] ; then
  echo "Usage: $0 <Hadoop conf directory> <Hadoop data directory>"
  exit 1
fi

_pwd=`pwd`
hadoop_conf_dir=$1
hadoop_data_dir=$2

mkdir -p $hadoop_data_dir
cd $hadoop_data_dir
hadoop_data_dir=`pwd`
cd $_pwd

num_cores=`num-cores.sh`
primary_group=`id -g -n $USER`

sed $SED_OPTS "s#\(JAVA_HOME\).*#\1=$JAVA_HOME#g" $hadoop_conf_dir/hadoop-env.sh
sed $SED_OPTS "s/# export JAVA_HOME/export JAVA_HOME/g" $hadoop_conf_dir/hadoop-env.sh
echo "export HADOOP_HOME_WARN_SUPPRESS=TRUE" >> $hadoop_conf_dir/hadoop-env.sh

mv $hadoop_conf_dir/core-site.xml $hadoop_conf_dir/core-site.xml.orig
cat > $hadoop_conf_dir/core-site.xml <<XML_DOC
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<configuration>
  <property>
    <name>fs.checkpoint.dir</name>
    <value>$hadoop_data_dir/dfs/namesecondary</value>
  </property>
  <property>
    <name>fs.default.name</name>
    <value>hdfs://localhost:8020</value>
  </property>
  <property>
    <name>hadoop.proxyuser.$USER.hosts</name>
    <value>localhost</value>
  </property>
  <property>
    <name>hadoop.proxyuser.$USER.groups</name>
    <value>$primary_group</value>
  </property>
</configuration>
XML_DOC

mv $hadoop_conf_dir/hdfs-site.xml $hadoop_conf_dir/hdfs-site.xml.orig
cat > $hadoop_conf_dir/hdfs-site.xml <<XML_DOC
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<configuration>
  <property>
    <name>dfs.name.dir</name>
    <value>$hadoop_data_dir/dfs/name</value>
  </property>
  <property>
    <name>dfs.data.dir</name>
    <value>$hadoop_data_dir/dfs/data</value>
  </property>
  <property>
    <name>dfs.replication</name>
    <value>1</value>
  </property>
  <property>
    <name>dfs.support.append</name>
    <value>true</value>
  </property>
  <property>
    <name>dfs.datanode.max.xcievers</name>
    <value>4096</value>
  </property>
</configuration>
XML_DOC

mv $hadoop_conf_dir/mapred-site.xml $hadoop_conf_dir/mapred-site.xml.orig
cat > $hadoop_conf_dir/mapred-site.xml <<XML_DOC
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<configuration>
  <property>
    <name>mapred.local.dir</name>
    <value>$hadoop_data_dir/mapred/local</value>
  </property>
  <property>
    <name>mapred.job.tracker</name>
    <value>localhost:8021</value>
  </property>
  <property>
    <name>mapred.tasktracker.map.tasks.maximum</name>
    <value>$num_cores</value>
    <final>true</final>
  </property>
</configuration>
XML_DOC

