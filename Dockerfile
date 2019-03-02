FROM kdhruvajyothreddy/tomcat

WORKDIR /usr/local/tomcat

## COPY **/target/*.war /usr/local/tomcat/webapps/
## COPY /var/lib/jenkins/workspace/Sample_Maven_Project_Packer/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war
## COPY /tomcat/conf/server.xml /usr/local/tomcat/conf/server.xml
## COPY /tomcat/conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 80