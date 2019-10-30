FROM ahlaw/polynote
LABEL maintainer="amos.law98@gmail.com"

WORKDIR /opt 

ARG APACHE_SPARK_VERSION=2.4.4
ARG HADOOP_VERSION=2.7

ENV SPARK_URL https://www-eu.apache.org/dist/spark/spark-${APACHE_SPARK_VERSION}/spark-${APACHE_SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

RUN curl -L $SPARK_URL | tar -zxvpf - && ln -s spark-${APACHE_SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark

ENV SPARK_HOME /opt/spark
ENV PATH $PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

RUN pip install pyspark
