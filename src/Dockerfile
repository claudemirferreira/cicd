# Use a imagem base oficial do OpenJDK 17
FROM openjdk:21-jdk-slim
WORKDIR /app
CMD mvn clean package
COPY target/app.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "cicd.jar"]
