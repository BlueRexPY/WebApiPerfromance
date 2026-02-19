FROM alpine:3.19 AS builder

RUN apk add --no-cache \
    gcc \
    musl-dev \
    cmake \
    make \
    pkgconfig \
    libmicrohttpd-dev \
    postgresql-dev \
    mongo-c-driver-dev

WORKDIR /app
COPY CMakeLists.txt .
COPY main.c .

RUN cmake -DCMAKE_BUILD_TYPE=Release . \
    && make -j"$(nproc)"

# ── Runtime ───────────────────────────────────────────────────────────────────
FROM alpine:3.19

RUN apk add --no-cache libmicrohttpd libpq mongo-c-driver

WORKDIR /app
COPY --from=builder /app/capi .

EXPOSE 8000
CMD ["./capi"]
