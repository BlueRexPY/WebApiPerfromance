FROM dart:3.3 AS builder

WORKDIR /app

COPY pubspec.yaml .
RUN dart pub get

COPY src/ src/

RUN dart compile exe src/server.dart -o src/server

FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y ca-certificates libpq5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/src/server .

EXPOSE 8000

CMD ["./server"]
