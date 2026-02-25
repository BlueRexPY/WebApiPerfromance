FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnucobol \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY src/ ./src/

# cobc: GnuCOBOL compiler; -x = executable, -O2 = optimise
# -fstatic-call makes CALL statements to C functions resolve at link time (not dynamic module lookup)
RUN cobc -x -O2 -free -fstatic-call -o server src/server.cob -lpq

# ── runtime ──────────────────────────────────────────────────────────────────
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnucobol \
    libpq5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8000

CMD ["./server"]
