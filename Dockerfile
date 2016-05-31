FROM java:jre-alpine
MAINTAINER giabar

ENV TOMCATVER 8.0.35
RUN wget -O /tmp/tomcat8.tar.gz http://www.apache.org/dist/tomcat/tomcat-8/v${TOMCATVER}/bin/apache-tomcat-${TOMCATVER}.tar.gz &&\
    mkdir /opt &&\
    cd /opt &&\
    tar zxf /tmp/tomcat8.tar.gz &&\
    rm /tmp/tomcat8.tar.gz &&\
    mv /opt/apache-tomcat* /opt/tomcat
ADD ./run.sh /usr/local/bin/run
EXPOSE 8080
VOLUME ["/opt/tomcat/webapps"]
CMD ["/usr/local/bin/run"]
