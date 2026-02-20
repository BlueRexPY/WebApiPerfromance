FROM gradle:8-jdk21-alpine AS builder

WORKDIR /app

COPY build.gradle.kts settings.gradle.kts ./

# Download dependencies first (layer cache)
RUN gradle dependencies --no-daemon -q

COPY src ./src

RUN gradle shadowJar --no-daemon -q

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=builder /app/build/libs/*-all.jar app.jar

EXPOSE 8000

ENTRYPOINT ["java", \
    "-server", \
    "-XX:+UseG1GC", \
    "-XX:MaxGCPauseMillis=100", \
    "-jar", "app.jar"]
