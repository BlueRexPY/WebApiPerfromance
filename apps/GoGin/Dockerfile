FROM golang:1.23-alpine AS builder

WORKDIR /app

RUN apk add --no-cache git

COPY go.mod ./
# Bootstrap go.sum by downloading all deps declared in go.mod
RUN GONOSUMDB='*' GOFLAGS='-mod=mod' go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -mod=mod -ldflags="-w -s" -o main .

FROM alpine:3.20

RUN apk --no-cache add ca-certificates

WORKDIR /app

COPY --from=builder /app/main .

EXPOSE 8000

CMD ["./main"]
