FROM tomcat:8.5.6-jre8-alpine
MAINTAINER giabar <info@giabar.com>

RUN apk upgrade --update &&\
    apk add --no-cache bash
ADD ./run /usr/local/bin/run
EXPOSE 8080
VOLUME ["/usr/local/tomcat/webapps"]
CMD ["/usr/local/bin/run"]
