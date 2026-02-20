FROM maven:3.9-eclipse-temurin-21-alpine AS builder

WORKDIR /app

# Download dependencies first (layer cache)
COPY pom.xml .
RUN mvn dependency:go-offline -B -q

# Build
COPY src ./src
RUN mvn package -DskipTests -B -q

# Runtime — JRE is sufficient for JVM mode
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Quarkus fast-jar layout
COPY --from=builder /app/target/quarkus-app/lib/          ./lib/
COPY --from=builder /app/target/quarkus-app/*.jar          ./
COPY --from=builder /app/target/quarkus-app/app/           ./app/
COPY --from=builder /app/target/quarkus-app/quarkus/       ./quarkus/

EXPOSE 8000

ENTRYPOINT ["java", \
    "-server", \
    "-XX:+UseG1GC", \
    "-XX:MaxGCPauseMillis=100", \
    "-XX:+OptimizeStringConcat", \
    "-jar", "quarkus-run.jar"]
