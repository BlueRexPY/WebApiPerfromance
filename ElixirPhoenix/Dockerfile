FROM elixir:1.17-alpine AS builder

WORKDIR /app

# Install build dependencies
RUN apk add --no-cache build-base git

# Install hex and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Set build ENV
ENV MIX_ENV=prod

# Copy mix files
COPY mix.exs mix.lock ./
RUN mix deps.get --only prod
RUN mix deps.compile

# Copy application files
COPY config ./config
COPY lib ./lib

# Compile and build release
RUN mix compile
RUN mix release

# Runtime stage
FROM alpine:3.19

RUN apk add --no-cache libstdc++ openssl ncurses-libs

WORKDIR /app

# Copy release from builder
COPY --from=builder /app/_build/prod/rel/elixir_phoenix_api ./

EXPOSE 8000

CMD ["/app/bin/elixir_phoenix_api", "start"]
