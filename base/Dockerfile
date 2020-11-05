FROM openjdk:8-jre-slim
COPY --from=python:3.6 / /

MAINTAINER Oscar Morante <oscar.morante@mirada.tv>

RUN apt-get update && apt-get install -y rsync

ADD storm_1.2.3.tar.gz /opt/apache-storm

ADD configure.sh /
RUN chmod +x /opt/apache-storm/bin/storm

ADD cluster.xml /opt/apache-storm/log4j2/cluster.xml
ADD worker.xml /opt/apache-storm/log4j2/worker.xml
