FROM python:3.7

MAINTAINER Alex Petrov<apetrov@appgrowth.com>

ENV SPARK_VERSION=2.4.0
ENV HADOOP_VERSION=2.7

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk scala

WORKDIR /app

RUN wget https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
RUN tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
RUN mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark
RUN rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz


#RUN apt-get update && apt-get install -y graphviz default-libmysqlclient-dev

CMD sleep 100
