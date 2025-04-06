FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/A18_Projet_Final-1.0-SNAPSHOT-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/A18_Projet_Final-1.0-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]