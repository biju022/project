FROM tomcat:latest

LABEL maintainer="Biju Behera"

ADD . /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
