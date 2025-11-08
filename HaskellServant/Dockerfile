FROM fpco/stack-build:lts-22.39 AS builder

WORKDIR /app

# Copy stack files
COPY stack.yaml package.yaml ./

# Download dependencies
RUN stack setup && stack build --only-dependencies

# Copy source code
COPY . .

# Build the application
RUN stack build --copy-bins --local-bin-path /app/bin

# Runtime stage
FROM ubuntu:22.04

WORKDIR /app

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    libgmp10 \
    libpq5 \
    netbase \
    && rm -rf /var/lib/apt/lists/*

# Copy binary from builder
COPY --from=builder /app/bin/haskell-servant-api /app/haskell-servant-api

EXPOSE 8000

CMD ["/app/haskell-servant-api", "+RTS", "-N14", "-RTS"]
