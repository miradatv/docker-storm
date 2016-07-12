FROM java:8

MAINTAINER Oscar Morante <oscar.morante@mirada.tv>

RUN curl -s http://apache.mivzakim.net/storm/apache-storm-1.0.1/apache-storm-1.0.1.tar.gz | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-1.0.1 /opt/apache-storm

ADD configure.sh /
ADD cluster.xml /opt/apache-storm/log4j2/cluster.xml
ADD worker.xml /opt/apache-storm/log4j2/worker.xml
