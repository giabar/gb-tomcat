## Apache Tomcat 8.5.33 Docker image

> This Docker image is based on official Apache Tomcat 8.5.35 Alpine image (https://hub.docker.com/_/tomcat/).



## Try online

You can try that online! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-tomcat/master/docker-compose.yml)



You can run the default command simply:
```
docker run -d -p 8080:8080 giabar/gb-tomcat
```



VOLUME mount points are created at [/usr/local/tomcat/webapps] and [/usr/local/tomcat/logs]
Run your container with volume parameter if you want to mount the aboves volumes:
```
docker run \
  -d \
  -p 8080:8080 \
  -v /data/webapps:/usr/local/tomcat/webapps \
  -v /data/logs:/usr/local/tomcat/logs \
  giabar/gb-tomcat
```



Default credentials:

username: myadmin
password: yourpassword


If you want to specify different credentials:

```
docker run \
  -d \
  -p 8080:8080 \
  --env ADMIN_USER=myusername \
  --env ADMIN_PASS=mypassword \
  giabar/gb-tomcat
```
