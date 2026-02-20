FROM alpine:3.19 AS builder

RUN apk add --no-cache \
    gcc \
    musl-dev \
    cmake \
    make \
    pkgconfig \
    libuv-dev \
    postgresql-dev

WORKDIR /app
COPY CMakeLists.txt .
COPY main.c .

RUN cmake -DCMAKE_BUILD_TYPE=Release . \
    && make -j"$(nproc)"

# ── Runtime ───────────────────────────────────────────────────────────────────
FROM alpine:3.19

RUN apk add --no-cache libuv libpq

WORKDIR /app
COPY --from=builder /app/clibuv .

EXPOSE 8000
CMD ["./clibuv"]
