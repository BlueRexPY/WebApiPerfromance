FROM golang:1.23-alpine AS builder

WORKDIR /app

# Install build dependencies
RUN apk add --no-cache git

# Copy go mod file and source
COPY go.mod ./
COPY . .

# Download and tidy dependencies (regenerates go.sum)
RUN GONOSUMDB=* go mod tidy

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags="-w -s" -o main .

# Runtime stage
FROM alpine:3.19

RUN apk --no-cache add ca-certificates

WORKDIR /app

# Copy binary from builder
COPY --from=builder /app/main .

EXPOSE 8000

CMD ["./main"]
