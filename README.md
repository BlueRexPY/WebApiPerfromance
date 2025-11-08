# Web API Performance Comparison

This repository contains performance-focused web API implementations in Python (Litestar), Python (FastAPI), .NET (ASP.NET Core), Node.js (Bun), Node.js (Fastify), Deno, Rust (Actix-web), Haskell (Servant), Elixir (Phoenix), Go (Fiber), Java (Spring Boot WebFlux), Swift (Vapor), and Erlang (Cowboy) with PostgreSQL database integration.

## Projects

### PythonLightStar

- **Framework**: Litestar with Granian ASGI server
- **Database**: PostgreSQL with Psycopg3 and connection pooling
- **Serialization**: msgspec
- **Event Loop**: uvloop

### PythonFastApi

- **Framework**: FastAPI with Uvicorn ASGI server
- **Database**: PostgreSQL with Psycopg3 and connection pooling
- **Connection Pool**: 90 connections with prepared statements
- **Event Loop**: uvloop

### DotNetApi

- **Framework**: ASP.NET Core 9.0 (Minimal APIs)
- **Database**: PostgreSQL with Npgsql (raw SQL, no ORM)
- **Connection Pooling**: NpgsqlDataSource with multiplexing

### DotNetApiAot

- **Framework**: ASP.NET Core 9.0 (Minimal APIs, Native AOT)
- **Database**: PostgreSQL with Npgsql (raw SQL, no ORM)
- **Connection Pooling**: NpgsqlDataSource with multiplexing
- **Compilation**: Native AOT for ultra-fast startup and low memory footprint
- **Optimizations**: Speed-optimized AOT, no reflection, minimal runtime

### NodeBunApi

- **Runtime**: Bun (ultra-fast JavaScript runtime)
- **Framework**: Bun's native HTTP server (zero overhead)
- **Database**: PostgreSQL with `postgres` driver and connection pooling
- **Connection Pool**: 90 connections with prepared statements

### NodeFastifyApi

- **Runtime**: Node.js 22
- **Framework**: Fastify (fastest Node.js web framework)
- **Database**: PostgreSQL with `postgres` driver and connection pooling
- **Connection Pool**: 90 connections with prepared statements

### NodeDenoApi

- **Runtime**: Deno 2.1 (secure TypeScript/JavaScript runtime)
- **Framework**: Deno's native HTTP server
- **Database**: PostgreSQL with deno-postgres driver and connection pooling
- **Connection Pool**: 90 connections
- **Security**: Secure by default with explicit permissions

### RustActix

- **Framework**: Actix-web 4.9 (blazing fast Rust web framework)
- **Database**: PostgreSQL with tokio-postgres and deadpool connection pooling
- **Connection Pool**: 90 connections with prepared statements
- **Workers**: 14
- **Compilation**: Release build with LTO and optimizations

### HaskellServant

- **Framework**: Servant with Warp web server
- **Database**: PostgreSQL with postgresql-simple and resource-pool
- **Connection Pool**: 90 connections
- **Runtime**: GHC with threaded runtime (-N14)
- **Compilation**: Optimized build (-O2)

### ElixirPhoenix

- **Framework**: Phoenix with Cowboy web server
- **Database**: PostgreSQL with Ecto and Postgrex
- **Connection Pool**: 90 connections
- **Concurrency**: BEAM VM with lightweight processes
- **Runtime**: Erlang/OTP for fault tolerance and scalability

### GoFiber

- **Framework**: Fiber (Express-inspired Go web framework)
- **Database**: PostgreSQL with pgx/v5 driver and connection pooling
- **Connection Pool**: 90 max connections, 10 min connections
- **Runtime**: Go 1.23 with goroutines
- **Compilation**: Static binary with size optimization

### JavaSpringBoot

- **Framework**: Spring Boot 3.2 with WebFlux (reactive)
- **Database**: PostgreSQL with R2DBC and connection pooling
- **Connection Pool**: 90 max connections, 10 initial connections
- **Runtime**: Java 21 with ZGC (low-latency garbage collector)
- **Reactive**: Project Reactor for non-blocking operations

### ErlangCowboy

- **Framework**: Cowboy 2.12 (high-performance HTTP server)
- **Database**: PostgreSQL with epgsql driver
- **Connection Pool**: Custom pool with 90 connections
- **Concurrency**: BEAM VM with lightweight processes
- **Runtime**: Erlang/OTP 26 for fault tolerance and scalability

### SwiftVapor

- **Framework**: Vapor 4.99 (Swift web framework)
- **Database**: PostgreSQL with PostgresNIO and connection pooling
- **Connection Pool**: 90 connections per event loop
- **Runtime**: Swift 5.9 with async/await
- **Compilation**: Release build with static Swift stdlib

## Endpoints

All APIs implement the same endpoints:

- `GET /` - Returns a simple "Hello, World!" message
- `GET /orders` - Returns 100 orders from the database (offset 1000, limit 100)

## Prerequisites

- Docker and Docker Compose
- Python 3.14+ (for local Python development)
- .NET 9.0 SDK (for local .NET development)
- Bun 1.0+ (for local Node/Bun development)
- Node.js 22+ (for local Node/Fastify development)
- Deno 2.1+ (for local Deno development)
- Rust 1.83+ (for local Rust development)
- Stack/GHC 9.6+ (for local Haskell development)
- Elixir 1.17+ (for local Elixir development)
- Go 1.23+ (for local Go development)
- Java 21+ and Maven 3.9+ (for local Java development)
- Swift 5.9+ (for local Swift development)
- Erlang/OTP 26+ and rebar3 (for local Erlang development)
- PostgreSQL 15+

## Database Setup

Both applications expect a PostgreSQL database with an `orders` table:

```sql
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    total_cents INTEGER NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
```

## Quick Start with Docker Compose

Run all services (database + all APIs) with a single command:

```bash
docker-compose up --build
```

The services will be available at:

- **Python Litestar API**: http://localhost:8000
- **.NET API**: http://localhost:8001
- **Bun API**: http://localhost:8002
- **Fastify API**: http://localhost:8003
- **Python FastAPI**: http://localhost:8004
- **Rust Actix API**: http://localhost:8005
- **Haskell Servant API**: http://localhost:8006
- **Elixir Phoenix API**: http://localhost:8007
- **Go Fiber API**: http://localhost:8008
- **Java Spring Boot API**: http://localhost:8009
- **Erlang Cowboy API**: http://localhost:8010
- **Deno API**: http://localhost:8011
- **Swift Vapor API**: http://localhost:8012
- **.NET AOT API**: http://localhost:8013
- **PostgreSQL**: localhost:5432

To run in detached mode:

```bash
docker-compose up -d --build
```

To stop all services:

```bash
docker-compose down
```

To stop and remove volumes (database data):

```bash
docker-compose down -v
```

## Configuration

### Environment Variables

```env
DATABASE_URL=postgresql://apiuser:apipassword@localhost:5432/ordersdb
```

## Running Locally

### Python Litestar

```bash
cd PythonLightStar
pip install -r requirements.txt
granian --interface asgi --host 0.0.0.0 --port 8000 --workers 14 --no-access-log --loop uvloop main:app
```

### Python FastAPI

```bash
cd PythonFastApi
pip install -r requirements.txt
uvicorn main:app --host 0.0.0.0 --port 8000 --workers 4 --loop uvloop --no-access-log
```

### .NET API

```bash
cd DotNetApi
dotnet restore
dotnet run
```

### DotNetApiAot

```bash
cd DotNetApiAot
dotnet restore
dotnet run
```

### Bun API

```bash
cd NodeBunApi
bun install
bun run src/index.ts
```

### Fastify API

```bash
cd NodeFastifyApi
npm install
npm start
```

### Node Deno API

```bash
cd NodeDenoApi
deno task start
```

### Rust Actix API

```bash
cd RustActix
cargo build --release
./target/release/rust-actix-api
```

### Haskell Servant API

```bash
cd HaskellServant
stack build
stack exec haskell-servant-api
```

### Elixir Phoenix API

```bash
cd ElixirPhoenix
mix deps.get
mix run --no-halt
```

### Go Fiber API

```bash
cd GoFiber
go mod download
go run main.go
```

### Java Spring Boot API

```bash
cd JavaSpringBoot
mvn clean install
mvn spring-boot:run
```

### Erlang Cowboy API

```bash
cd ErlangCowboy
rebar3 compile
rebar3 shell
```

### Swift Vapor API

```bash
cd SwiftVapor
swift build -c release
.build/release/App serve --env production --hostname 0.0.0.0 --port 8000
```

## Running with Docker

### Python Litestar

```bash
cd PythonLightStar
docker build -t python-litestar-api .
docker run -p 8000:8000 --env-file .env python-litestar-api
```

### Python FastAPI

```bash
cd PythonFastApi
docker build -t python-fastapi .
docker run -p 8000:8000 --env-file .env python-fastapi
```

### .NET API

```bash
cd DotNetApi
docker build -t dotnet-api .
docker run -p 8000:8000 -e DATABASE_URL=postgresql://apiuser:apipassword@host.docker.internal:5432/ordersdb dotnet-api
```

### DotNetApiAot

```bash
cd DotNetApiAot
docker build -t dotnet-aot-api .
docker run -p 8000:8000 -e DATABASE_URL=postgresql://apiuser:apipassword@host.docker.internal:5432/ordersdb dotnet-aot-api
```

### Bun API

```bash
cd NodeBunApi
docker build -t bun-api .
docker run -p 8000:8000 --env-file .env bun-api
```

### Fastify API

```bash
cd NodeFastifyApi
docker build -t fastify-api .
docker run -p 8000:8000 --env-file .env fastify-api
```

### Deno API

```bash
cd NodeDenoApi
docker build -t deno-api .
docker run -p 8000:8000 --env-file .env deno-api
```

### Rust Actix API

```bash
cd RustActix
docker build -t rust-actix-api .
docker run -p 8000:8000 --env-file .env rust-actix-api
```

### Haskell Servant API

```bash
cd HaskellServant
docker build -t haskell-servant-api .
docker run -p 8000:8000 --env-file .env haskell-servant-api
```

### Elixir Phoenix API

```bash
cd ElixirPhoenix
docker build -t elixir-phoenix-api .
docker run -p 8000:8000 --env-file .env elixir-phoenix-api
```

### Go Fiber API

```bash
cd GoFiber
docker build -t go-fiber-api .
docker run -p 8000:8000 --env-file .env go-fiber-api
```

### Java Spring Boot API

```bash
cd JavaSpringBoot
docker build -t java-springboot-api .
docker run -p 8000:8000 --env-file .env java-springboot-api
```

### Erlang Cowboy API

```bash
cd ErlangCowboy
docker build -t erlang-cowboy-api .
docker run -p 8000:8000 --env-file .env erlang-cowboy-api
```

### Swift Vapor API

```bash
cd SwiftVapor
docker build -t swift-vapor-api .
docker run -p 8000:8000 --env-file .env swift-vapor-api
```

## Performance Tuning

### Python Litestar

- Connection pool size: 90
- Workers: 14
- uvloop for async performance
- Prepared statements enabled

### Python FastAPI

- Connection pool size: 90
- Workers: 4 (uvicorn)
- uvloop for async performance
- Prepared statements enabled

### .NET API

- Raw SQL with Npgsql (no ORM overhead)
- Connection pool size: 90
- Connection multiplexing enabled
- Prepared statements for queries
- Minimal API for reduced overhead

### DotNetApiAot

- Native AOT compilation for instant startup
- Source-generated JSON serialization (no reflection)
- Speed-optimized AOT settings
- Alpine-based runtime-deps image for minimal size
- Same connection pooling as standard .NET API

### Bun API

- Bun's native HTTP server (fastest JS runtime)
- Connection pool size: 90
- Prepared statements enabled
- Zero-overhead native performance

### Fastify API

- Fastify (fastest Node.js framework)
- Connection pool size: 90
- Prepared statements enabled
- Logging disabled for max performance
- Node.js 22 with latest V8 optimizations

### Node Deno API

- Deno's native HTTP server (Rust-based performance)
- Connection pool size: 90
- TypeScript with V8 engine optimizations
- Secure by default with minimal runtime overhead
- No node_modules, cached dependencies

### Rust Actix API

- Actix-web with tokio async runtime
- Connection pool size: 90
- Workers: 14
- Prepared statements with statement caching
- Release build with LTO and codegen optimizations
- Zero-cost abstractions and memory safety

### Haskell Servant API

- Warp web server (high-performance HTTP)
- Connection pool size: 90
- Threaded runtime with 14 capabilities (-N14)
- GHC optimizations (-O2)
- Lazy evaluation and type safety
- postgresql-simple with resource pooling

### Elixir Phoenix API

- Phoenix framework with Cowboy
- Connection pool size: 90
- BEAM VM concurrency model
- Lightweight processes for handling requests
- Production release build

### Go Fiber API

- Fiber framework with fasthttp
- Connection pool: 90 max, 10 min connections
- Goroutines for concurrency
- pgx/v5 driver with prepared statements
- Static binary with optimizations

### Java Spring Boot API

- Spring Boot WebFlux (reactive/non-blocking)
- R2DBC connection pool: 90 max, 10 initial connections
- Project Reactor for reactive streams
- ZGC for low-latency garbage collection
- Java 21 with virtual threads support

### Erlang Cowboy API

- Cowboy HTTP server (battle-tested performance)
- Connection pool: 90 connections
- BEAM VM lightweight processes
- 100 acceptors for concurrent connections
- OTP supervision tree for fault tolerance

### Swift Vapor API

- Vapor framework with non-blocking I/O
- PostgresNIO connection pool: 90 connections per event loop
- Swift 5.9 with async/await concurrency
- Release build with static Swift stdlib
- NIO event loop for high performance
- Compiled to native code with LLVM optimizations

## Testing

Test the endpoints:

```bash
# Python Litestar API
curl http://localhost:8000/
curl http://localhost:8000/orders

# .NET API
curl http://localhost:8001/
curl http://localhost:8001/orders

# Bun API
curl http://localhost:8002/
curl http://localhost:8002/orders

# Fastify API
curl http://localhost:8003/
curl http://localhost:8003/orders

# Python FastAPI
curl http://localhost:8004/
curl http://localhost:8004/orders

# Rust Actix API
curl http://localhost:8005/
curl http://localhost:8005/orders

# Haskell Servant API
curl http://localhost:8006/hello
curl http://localhost:8006/orders

# Elixir Phoenix API
curl http://localhost:8007/
curl http://localhost:8007/orders

# Go Fiber API
curl http://localhost:8008/
curl http://localhost:8008/orders

# Java Spring Boot API
curl http://localhost:8009/
curl http://localhost:8009/orders

# Erlang Cowboy API
curl http://localhost:8010/
curl http://localhost:8010/orders

# Deno API
curl http://localhost:8011/
curl http://localhost:8011/orders

# Swift Vapor API
curl http://localhost:8012/
curl http://localhost:8012/orders

# .NET AOT API
curl http://localhost:8013/
curl http://localhost:8013/orders
```

## Performance Testing

You can use tools like `wrk`, `ab` (Apache Bench), or `k6` to benchmark all APIs:

```bash
# Example with wrk
wrk -t 2 -c 120 -d 20s http://localhost:8000/orders  # Litestar
wrk -t 2 -c 120 -d 20s http://localhost:8001/orders  # .NET
wrk -t 2 -c 120 -d 20s http://localhost:8002/orders  # Bun
wrk -t 2 -c 120 -d 20s http://localhost:8003/orders  # Fastify
wrk -t 2 -c 120 -d 20s http://localhost:8004/orders  # FastAPI
wrk -t 2 -c 120 -d 20s http://localhost:8005/orders  # Rust Actix
wrk -t 2 -c 120 -d 20s http://localhost:8006/orders  # Haskell Servant
wrk -t 2 -c 120 -d 20s http://localhost:8007/orders  # Elixir Phoenix
wrk -t 2 -c 120 -d 20s http://localhost:8008/orders  # Go Fiber
wrk -t 2 -c 120 -d 20s http://localhost:8009/orders  # Java Spring Boot
wrk -t 2 -c 120 -d 20s http://localhost:8010/orders  # Erlang Cowboy
wrk -t 2 -c 120 -d 20s http://localhost:8011/orders  # Deno
wrk -t 2 -c 120 -d 20s http://localhost:8012/orders  # Swift Vapor
wrk -t 2 -c 120 -d 20s http://localhost:8013/orders  # .NET AOT
```
