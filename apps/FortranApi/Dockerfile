FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gfortran \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY src/ ./src/

# Compile Fortran server; -lpthread for POSIX threads, -lpq for PostgreSQL
RUN gfortran -O2 -std=f2008 -o server src/server.f90 -lpthread -lpq

# ── runtime ──────────────────────────────────────────────────────────────────
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libpq5 \
    libgfortran5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8000

CMD ["./server"]
