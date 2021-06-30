FROM tomcat:latest

LABEL maintainer="Biju BEhera"

ADD ./var/lib/jenkins/workspace/project ci-cd/target/WebAppCal-1.2.3 /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
