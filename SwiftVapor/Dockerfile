FROM swift:5.9-jammy as build

WORKDIR /build

COPY Package.swift .
RUN swift package resolve

COPY . .

RUN swift build -c release

FROM swift:5.9-jammy-slim

RUN apt-get update && apt-get install -y \
    ca-certificates \
    libssl3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=build /build/.build/release/App /app/App

EXPOSE 8000

CMD ["/app/App"]
