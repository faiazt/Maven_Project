FROM tomcat:9.0.50
COPY target/*.jar /usr/local/tomcat/webapps/
