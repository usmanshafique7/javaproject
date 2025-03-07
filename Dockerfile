# Use OpenJDK 17 as the base imag
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file from the target directory to the container
COPY target/demo-0.0.1-SNAPSHOT.war app.war

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application (WAR file) using Java
ENTRYPOINT ["java", "-jar", "app.war"]

# # Use the official Tomcat base image
# FROM tomcat:10-jdk17-openjdk

# # Set environment variables for Tomcat
# ENV CATALINA_HOME /usr/local/tomcat

# # Remove default web apps
# RUN rm -rf ${CATALINA_HOME}/webapps/*

# # Copy the WAR file into Tomcat's webapps directory
# COPY target/demo-0.0.1-SNAPSHOT.war ${CATALINA_HOME}/webapps/ROOT.war

# # Expose port 8080
# EXPOSE 8080

# # Start Tomcat server
# CMD ["catalina.sh", "run"]