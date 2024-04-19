FROM tomcat:9.0.50
COPY target/*.war /usr/local/tomcat/webapps/
