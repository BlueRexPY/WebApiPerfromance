FROM maven:3.9-eclipse-temurin-21-alpine AS builder

WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests -B

# Runtime stage
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copy jar from builder
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8000

# Simple JVM settings: G1GC, bounded heap, leave room for OS and thread stacks
ENTRYPOINT ["java", \
    "-server", \
    "-Xms256m", \
    "-Xmx640m", \
    "-XX:+UseG1GC", \
    "-XX:MaxGCPauseMillis=100", \
    "-XX:MaxMetaspaceSize=96m", \
    "-jar", \
    "app.jar"]
