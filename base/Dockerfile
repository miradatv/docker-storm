FROM java:8

MAINTAINER Oscar Morante <oscar.morante@mirada.tv>

ADD apache-storm-1.0.5.tar.gz /opt

RUN mv /opt/apache-storm-1.0.5 /opt/apache-storm

ADD configure.sh /
ADD cluster.xml /opt/apache-storm/log4j2/cluster.xml
ADD worker.xml /opt/apache-storm/log4j2/worker.xml
