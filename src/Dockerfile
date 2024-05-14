# Use a imagem base oficial do OpenJDK 17
FROM openjdk:17-jdk-slim
WORKDIR /app
CMD mvn -DskipTests=true clean package
COPY target/cicd.jar /app/app1.jar
EXPOSE 8080
CMD ["java", "-jar", "app1.jar"]
