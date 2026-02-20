FROM maven:3.9-eclipse-temurin-21-alpine AS builder

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline -B -q

COPY src ./src
RUN mvn package -DskipTests -B -q

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Micronaut optimized launch-time JVM flags
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8000

ENTRYPOINT ["java", \
    "-server", \
    "-XX:+UseG1GC", \
    "-XX:MaxGCPauseMillis=100", \
    "-Dmicronaut.server.port=8000", \
    "-jar", "app.jar"]
