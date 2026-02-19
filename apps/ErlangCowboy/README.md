# Erlang Cowboy API

High-performance REST API built with Erlang/OTP and Cowboy HTTP server.

## Features

- Cowboy 2.12 HTTP server
- epgsql PostgreSQL driver
- Poolboy connection pooling (120 connections)
- 100 acceptors for concurrent connections
- BEAM VM lightweight processes
- OTP supervision tree

## Running

```bash
# Install dependencies
rebar3 get-deps

# Compile
rebar3 compile

# Run
rebar3 shell

# Build release
rebar3 as prod release

# Run release
_build/prod/rel/erlang_cowboy_api/bin/erlang_cowboy_api foreground
```

## Docker

```bash
docker build -t erlang-cowboy-api .
docker run -p 8000:8000 --env-file .env erlang-cowboy-api
```

## Endpoints

- `GET /` - Hello World
- `GET /orders` - Get 100 orders (offset 1000)
