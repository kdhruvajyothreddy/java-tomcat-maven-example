FROM kdhruvajyothreddy/tomcat:8.5

RUN apt-get update

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/META-INF/context.xml

EXPOSE 8080