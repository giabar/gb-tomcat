## Apache Tomcat 8.5.6 Docker image

> This Docker image is based on official Apache Tomcat 8.5.6 Alpine image.

You can run the default command simply:
```
docker run -d -p 8080:8080 giabar/gb-tomcat
```

VOLUME mount points are created at [/usr/local/tomcat/webapps] and [/usr/local/tomcat/logs]
Run your container with volume parameter if you want to mount the aboves volumes:
```
docker run -d -p 8080:8080 \
  -v /data/webapps:/usr/local/tomcat/webapps \
  -v /data/logs:/usr/local/tomcat/logs \
  giabar/gb-tomcat
```
