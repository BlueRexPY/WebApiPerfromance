FROM ghcr.io/gleam-lang/gleam:v1.14.0-erlang-alpine AS builder

WORKDIR /app

# Copy manifest and download deps
COPY gleam.toml ./
RUN gleam deps download

# Copy source and build
COPY src ./src
RUN gleam export erlang-shipment

# Runtime stage: just needs Erlang OTP
FROM erlang:28-alpine

WORKDIR /app

COPY --from=builder /app/build/erlang-shipment .

EXPOSE 8000

ENTRYPOINT ["./entrypoint.sh", "run"]
