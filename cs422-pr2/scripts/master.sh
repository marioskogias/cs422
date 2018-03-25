#/bin/sh

set -e

echo "Restart ssh.."
service ssh restart

echo "Start hadoop slaves"
$HADOOP_HOME/sbin/start-all.sh

## Add files to hdfs if necessary ##
$HADOOP_HOME/bin/hadoop fs -mkdir /joins
$HADOOP_HOME/bin/hadoop fs -put workloads/* /joins

echo "Starting spark master"
/root/spark-2.2.1-bin-hadoop2.7/sbin/start-master.sh

echo "Starting spark slaves"
for i in `cat $HADOOP_HOME/etc/hadoop/slaves`; do
  ssh $i /root/spark-2.2.1-bin-hadoop2.7/sbin/start-slave.sh spark://master:7077
done

sleep infinity
