FROM kdhruvajyothreddy/tomcat:8.5

WORKDIR /usr/local/tomcat

## COPY **/target/*.war /usr/local/tomcat/webapps/
## ADD java-tomcat-maven-example.war /usr/local/tomcat/webapps

EXPOSE 80