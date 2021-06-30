FROM tomcat:latest

LABEL maintainer="Biju Behera"

COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
