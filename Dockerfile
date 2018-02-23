FROM tomcat:8.5.28-jre8-alpine
LABEL maintainer="info@giabar.com"
RUN apk upgrade --update &&\
    apk add --no-cache bash
EXPOSE 8080
VOLUME ["/usr/local/tomcat/webapps"]
VOLUME ["/usr/local/tomcat/logs"]
CMD ["/usr/local/bin/run"]
ADD ./run /usr/local/bin/run
