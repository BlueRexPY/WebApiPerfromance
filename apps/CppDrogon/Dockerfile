# Build stage
FROM ubuntu:22.04 AS builder

# Avoid prompts during apt-get
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y \
    git \
    cmake \
    g++ \
    libpq-dev \
    libssl-dev \
    zlib1g-dev \
    libjsoncpp-dev \
    uuid-dev \
    libbrotli-dev \
    libmongoc-dev \
    libbson-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Clone and build Drogon
RUN git config --global http.sslVerify false && \
    git clone --depth 1 --branch v1.9.7 https://github.com/drogonframework/drogon.git /drogon && \
    cd /drogon && \
    git submodule update --init && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_CTL=OFF \
    -DBUILD_ORM=ON \
    -DBUILD_POSTGRESQL=ON \
    -DBUILD_MYSQL=OFF \
    -DBUILD_SQLITE=OFF \
    -DBUILD_REDIS=OFF \
    .. && \
    make -j$(nproc) && \
    make install

# Copy and build application
COPY CMakeLists.txt .
COPY main.cpp .

RUN mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make -j$(nproc)

# Runtime stage
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libpq5 \
    libssl3 \
    zlib1g \
    libjsoncpp25 \
    libuuid1 \
    libbrotli1 \
    libmongoc-1.0-0 \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Copy binary from builder
COPY --from=builder /app/build/cpp-drogon-api /app/cpp-drogon-api

# Copy shared libraries from Drogon build
COPY --from=builder /usr/local/lib/libdrogon.so* /usr/local/lib/
COPY --from=builder /usr/local/lib/libtrantor.so* /usr/local/lib/

# Update library cache
RUN ldconfig

EXPOSE 8000

CMD ["/app/cpp-drogon-api"]
