FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnat \
    libpq-dev \
    libpq5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY src/ ./src/

# gnatmake compiles Ada using the GNAT toolchain; -I src finds pool_state.ads/adb;
# -largs passes extra linker flags
RUN gnatmake -O2 -o server -Isrc src/main.adb -largs -lpq -lpthread

EXPOSE 8000

CMD ["./server"]
