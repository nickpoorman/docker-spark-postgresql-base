# docker-spark-postgresql-base
#
# VERSION 0.0.1

FROM debian:wheezy
MAINTAINER Nick Poorman <mail@nickpoorman.com>

RUN apt-get update && \
    apt-get install -y \
      openjdk-7-jre-headless \
      scala \
      curl \
      wget

RUN mkdir /tmp/spark && \
    wget http://storage.googleapis.com/ng-ml-storage/spark-1.3.2-SNAPSHOT-bin-2.4.0.tgz -O - | tar -xz -C /tmp/spark --strip-components=1

ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
RUN update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java