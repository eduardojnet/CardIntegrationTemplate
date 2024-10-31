# Etapa 1: Build
        FROM maven:3.8.1-openjdk-11 AS builder
        WORKDIR /app
        COPY pom.xml .
        COPY src ./src
        RUN mvn clean package -DskipTests

        # Etapa 2: Runtime
        FROM openjdk:11-jre-slim
        WORKDIR /app
        COPY --from=builder /app/target/CardIntegration-0.0.1-SNAPSHOT.jar app.jar
        ENTRYPOINT ["java", "-jar", "/app/app.jar"]