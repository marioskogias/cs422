#/bin/sh

## Add files to hdfs if necessary ##
$HADOOP_HOME/bin/hadoop fs -mkdir /wordcount
$HADOOP_HOME/bin/hadoop fs -put workloads/wordcount/* /wordcount

## Run any job here ##
$HADOOP_HOME/bin/hadoop jar jars/wordcount.jar /wordcount /wordcount-res

## and then just sleep ##
sleep infinity
