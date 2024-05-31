# Etapa 1: Construir o JAR da aplicação
FROM maven:3.8.8-eclipse-temurin-21 AS build

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo pom.xml e as dependências do Maven para o contêiner
COPY pom.xml .
COPY src ./src

# Execute o comando Maven para construir o JAR
RUN mvn clean package

# Etapa 2: Criar a imagem final para execução
FROM openjdk:21-jdk

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o JAR da aplicação da etapa de construção para o diretório de trabalho
COPY --from=build /app/target/myapp.jar /app/myapp.jar

# Comando para executar a aplicação
CMD ["java", "-jar", "myapp.jar"]
