FROM nimlang/nim:2.0.0-ubuntu AS builder

RUN apt-get update && apt-get install -y \
    libpq-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY httpbeast_api.nimble .
RUN nimble install -y --depsOnly

COPY main.nim .
RUN nim c \
    -d:release \
    --opt:speed \
    --threads:on \
    --mm:arc \
    -d:useMalloc \
    --passL:-lpq \
    -o:server \
    main.nim

FROM ubuntu:22.04

RUN apt-get update && apt-get install -y libpq5 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8000

CMD ["./server"]
