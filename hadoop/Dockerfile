FROM diasbase

# Install hdfs
RUN wget http://mirror.easyname.ch/apache/hadoop/common/stable/hadoop-2.9.0.tar.gz
RUN tar -xvzf hadoop-2.9.0.tar.gz
RUN rm hadoop-2.9.0.tar.gz
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
ENV HADOOP_HOME=/root/hadoop-2.9.0

ADD config/masters $HADOOP_HOME/etc/hadoop/masters
ADD config/slaves $HADOOP_HOME/etc/hadoop/slaves
ADD config/core-site.xml $HADOOP_HOME/etc/hadoop/core-site.xml
ADD config/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml
ADD config/mapred-site.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
ADD config/yarn-site.xml $HADOOP_HOME/etc/hadoop/yarn-site.xml
