FROM elixir:1.17 AS builder

WORKDIR /app

RUN apt-get update && \
    apt-get install -y build-essential git && \
    rm -rf /var/lib/apt/lists/*

RUN mix local.hex --force && \
    mix local.rebar --force

ENV MIX_ENV=prod

COPY mix.exs ./
RUN mix deps.get --only prod
RUN mix deps.compile

COPY config ./config
COPY lib ./lib

RUN mix compile
RUN mix release

FROM elixir:1.17-slim

RUN apt-get update && \
    apt-get install -y libssl3 libncurses6 ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /app/_build/prod/rel/elixir_plug_api ./

EXPOSE 8000

CMD ["/app/bin/elixir_plug_api", "start"]
