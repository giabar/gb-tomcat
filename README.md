## Apache Tomcat 8 Docker image

> This Docker image is based on official Java JRE 1.8 / Alpine image (size: 108mb).

You can run the default command simply:
```
docker run -d -p 8080:8080 giabar/gb-docker-tomcat:8-jre8
```

This image is configured with a volume at /opt/tomcat/webapps to hold the persisted index data. 
Use that path if you would like to keep the data in a mounted volume:
```
docker run -d -p 8080:8080 -v /tmp/webapps:/opt/tomcat/webapps giabar/gb-docker-tomcat:8-jre8
```

This image includes EXPOSE 8080, so standard container linking will make it automatically available to the linked containers.
