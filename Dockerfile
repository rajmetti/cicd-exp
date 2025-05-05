# Use a lightweight Java base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY target/*.jar /app/my-app.jar

# Create a directory for API data output
RUN mkdir -p /app/data

# Expose the port (e.g., 8080 for Spring Boot or your app’s port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]