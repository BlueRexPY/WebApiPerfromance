FROM crystallang/crystal:1.14-alpine AS builder

WORKDIR /app

RUN apk add --no-cache postgresql-dev

COPY shard.yml ./
RUN shards install

COPY src ./src

RUN crystal build src/app.cr --release --no-debug -o /app/server

# Runtime stage
FROM alpine:3.20

RUN apk --no-cache add libgcc gc pcre2 postgresql-libs

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8000

CMD ["./server"]
