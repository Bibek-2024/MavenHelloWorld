# FROM tomcat:latest
# COPY ./webapp.war /usr/local/tomcat/webapps
# RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

FROM tomcat:latest

# Read the WAR file directly from the Maven target directory
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps

# Restore Tomcat default manager tools and landing pages
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
