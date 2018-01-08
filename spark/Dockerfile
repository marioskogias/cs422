FROM diasbase

# Install Spark
RUN wget http://mirror.easyname.ch/apache/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz
RUN tar -xvzf spark-2.2.1-bin-hadoop2.7.tgz
RUN rm spark-2.2.1-bin-hadoop2.7.tgz
ENV SPARK_HOME=/root/spark-2.2.1-bin-hadoop2.7
