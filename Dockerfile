FROM tomcat:8.5.31-jre8-alpine
LABEL maintainer="info@giabar.com"
RUN apk add -q --update --no-cache bash &&\
    rm -rf /var/cache/apk/
ADD ./run /usr/local/bin/run
EXPOSE 8080
VOLUME ["/usr/local/tomcat/webapps"]
VOLUME ["/usr/local/tomcat/logs"]
CMD ["/usr/local/bin/run"]
