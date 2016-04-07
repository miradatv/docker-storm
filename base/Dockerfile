FROM java:8

MAINTAINER Oscar Morante <oscar.morante@mirada.tv>

RUN curl -s http://apache.mivzakim.net/storm/apache-storm-0.10.0/apache-storm-0.10.0.tar.gz | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-0.10.0 /opt/apache-storm

ADD configure.sh /
