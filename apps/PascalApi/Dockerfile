FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    fpc \
    fp-units-fcl \
    fp-units-db \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY src/ ./src/

# Compile: FPC discovers standard unit paths automatically
# -FE. places the output executable in the working directory (/app)
RUN fpc -O2 -FE. src/server.pas

# ── runtime ──────────────────────────────────────────────────────────────────
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libpq5 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8000

CMD ["./server"]
