## Apache Tomcat 8.5.6 Docker image

> This Docker image is based on official Apache Tomcat 8.5.6 Alpine image.

You can run the default command simply:
```
docker run -d -p 8080:8080 giabar/gb-tomcat
```

A VOLUME mount point created at /usr/local/tomcat/webapps
Use that path if you would like to keep the data in a mounted volume:
```
docker run -d -p 8080:8080 -v /data/webapps:/usr/local/tomcat/webapps giabar/gb-tomcat
```
