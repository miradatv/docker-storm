FROM java:8

MAINTAINER Oscar Morante <oscar.morante@mirada.tv>


RUN apt-get update && apt-get install -y rsync

ADD apache-storm-1.0.1.tar.gz /opt/apache-storm

ADD configure.sh /
RUN chmod +x /opt/apache-storm/bin/storm

ADD cluster.xml /opt/apache-storm/log4j2/cluster.xml
ADD worker.xml /opt/apache-storm/log4j2/worker.xml
