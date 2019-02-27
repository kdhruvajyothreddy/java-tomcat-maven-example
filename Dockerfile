FROM kdhruvajyothreddy/tomcat

WORKDIR /usr/local/tomcat

## COPY **/target/*.war /usr/local/tomcat/webapps/
## ADD java-tomcat-maven-example.war /usr/local/tomcat/webapps

EXPOSE 80