FROM tomcat:8.5.37-jre8-alpine
LABEL maintainer="giabar@giabar.com"
RUN apk add -q --update --no-cache bash &&\
    rm -rf /var/cache/apk/ &&\
    rm -rf /tmp/*
ADD ./run /usr/local/bin/run
EXPOSE 8080
VOLUME ["/usr/local/tomcat/webapps"]
VOLUME ["/usr/local/tomcat/logs"]
CMD ["/usr/local/bin/run"]
