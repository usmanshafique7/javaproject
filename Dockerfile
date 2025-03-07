# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file from the target directory to the container
COPY target/demo-0.0.1-SNAPSHOT.war app.war

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application (WAR file) using Java
ENTRYPOINT ["java", "-jar", "app.war"]

