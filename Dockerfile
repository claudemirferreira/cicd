# Use a imagem base oficial do OpenJDK 17
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/cicd.jar /app/cicd.jar
EXPOSE 8080
CMD ["java", "-jar", "cicd.jar"]
