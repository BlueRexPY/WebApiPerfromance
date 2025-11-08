FROM swift:5.9-jammy as build

WORKDIR /build

COPY Package.swift .
RUN swift package resolve

COPY . .

RUN swift build -c release --static-swift-stdlib

FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=build /build/.build/release/App /app/App

EXPOSE 8000

ENTRYPOINT ["/app/App"]
CMD ["serve", "--env", "production", "--hostname", "0.0.0.0", "--port", "8000"]
