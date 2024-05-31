# Use a base image with Java 21
FROM openjdk:21-ea-28-jdk
# Set the working directory inside the container
WORKDIR /app
# Copy the application's JAR file into the container at /app
COPY target/cicd-1.0.0.jar /app/cicd-1.0.0.jar
# Expose the port your application runs on (optional)
EXPOSE 8080
# Define the command to run the application
CMD ["java", "-jar", "/app/cicd-1.0.0.jar"]
