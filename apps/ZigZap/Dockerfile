FROM ubuntu:22.04 AS builder

RUN apt-get update && apt-get install -y \
    wget xz-utils libpq-dev pkg-config ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Zig 0.13.0
RUN wget -q https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz && \
    tar xf zig-linux-x86_64-0.13.0.tar.xz && \
    mv zig-linux-x86_64-0.13.0 /usr/local/zig && \
    rm zig-linux-x86_64-0.13.0.tar.xz

ENV PATH="/usr/local/zig:$PATH"

WORKDIR /app

# Fetch zap dependency (populates the package cache and updates build.zig.zon)
COPY build.zig build.zig.zon ./
RUN zig fetch --save=zap https://github.com/zigzap/zap/archive/refs/tags/v0.9.1.tar.gz
COPY src ./src

RUN zig build -Doptimize=ReleaseFast

FROM ubuntu:22.04

RUN apt-get update && apt-get install -y libpq5 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/zig-out/bin/zig-zap-api .

EXPOSE 8000

CMD ["./zig-zap-api"]
