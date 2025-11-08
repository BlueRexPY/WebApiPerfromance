FROM elixir:1.17 AS builder

WORKDIR /app

# Install build dependencies
RUN apt-get update && \
    apt-get install -y build-essential git && \
    rm -rf /var/lib/apt/lists/*

# Install hex and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Set build ENV
ENV MIX_ENV=prod

# Copy mix files
COPY mix.exs ./
COPY mix.lock* ./
RUN mix deps.get --only prod
RUN mix deps.compile

# Copy application files
COPY config ./config
COPY lib ./lib

# Compile and build release
RUN mix compile
RUN mix release

# Runtime stage - use slim elixir image
FROM elixir:1.17-slim

RUN apt-get update && \
    apt-get install -y libssl3 libncurses6 ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy release from builder
COPY --from=builder /app/_build/prod/rel/elixir_phoenix_api ./

EXPOSE 8000

CMD ["/app/bin/elixir_phoenix_api", "start"]
