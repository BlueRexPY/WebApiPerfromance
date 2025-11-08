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

# Run with optimized JVM settings for performance
ENTRYPOINT ["java", \
    "-server", \
    "-XX:+UseZGC", \
    "-XX:+ZGenerational", \
    "-XX:+UseStringDeduplication", \
    "-XX:+UseCompressedOops", \
    "-XX:+UseCompressedClassPointers", \
    "-XX:MaxRAMPercentage=75.0", \
    "-XX:InitialRAMPercentage=50.0", \
    "-XX:+AlwaysPreTouch", \
    "-XX:+UseNUMA", \
    "-Xss256k", \
    "-Dreactor.netty.ioWorkerCount=8", \
    "-Dreactor.netty.pool.maxConnections=500", \
    "-Dio.netty.allocator.numDirectArenas=8", \
    "-Dio.netty.allocator.numHeapArenas=8", \
    "-jar", \
    "app.jar"]
