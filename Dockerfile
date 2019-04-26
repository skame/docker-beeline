FROM openjdk:8-jre-alpine

MAINTAINER Satoshi KAMEI "skame@nttv6.jp"

RUN apk add bash procps curl jq

#BEEEEEEEELINE
RUN mkdir /opt/beeline \
	&& curl -SL https://archive.apache.org/dist/hadoop/core/hadoop-3.2.0/hadoop-3.2.0.tar.gz \
	| tar -xzC /opt/beeline \
	&& curl -SL https://archive.apache.org/dist/hive/hive-3.1.1/apache-hive-3.1.1-bin.tar.gz \
	| tar -xzC /opt/beeline
ENV HADOOP_HOME /opt/beeline/hadoop-3.2.0
ENV HIVE_HOME /opt/beeline/apache-hive-3.1.1-bin
ENV PATH $PATH:$HIVE_HOME/bin
