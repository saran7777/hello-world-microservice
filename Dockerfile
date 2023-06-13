# Use the official Tomcat base image
FROM tomcat:latest

# Copy the JAR file to the webapps directory in the container
COPY target/hello-world-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
