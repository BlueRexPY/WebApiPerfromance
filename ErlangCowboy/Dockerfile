FROM erlang:26-alpine AS builder

WORKDIR /app

# Install rebar3
RUN apk add --no-cache git && \
    wget https://s3.amazonaws.com/rebar3/rebar3 && \
    chmod +x rebar3 && \
    mv rebar3 /usr/local/bin/

# Copy source
COPY . .

# Build release
RUN rebar3 as prod release

FROM alpine:3.19

RUN apk add --no-cache openssl ncurses-libs libstdc++

WORKDIR /app

COPY --from=builder /app/_build/prod/rel/erlang_cowboy_api ./

EXPOSE 8000

CMD ["./bin/erlang_cowboy_api", "foreground"]
