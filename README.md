# Web API Performance Comparison

This repository contains performance-focused web API implementations in Python (Litestar), Python (FastAPI), Python (Django), .NET (ASP.NET Core), Node.js (Bun), Node.js (Fastify), Node.js (Express), Deno, Rust (Actix-web), Haskell (Servant), Elixir (Phoenix), Go (Fiber), Java (Spring Boot WebFlux), Swift (Vapor), Ruby (Rails), Erlang (Cowboy), C++ (Drogon), and C (Microhttpd) with PostgreSQL database integration.

## Benchmark Results

**Test Configuration**: `wrk -t 2 -c 120 -d 20s` — 2 threads, 120 connections, 20 seconds  
**Tested**: 2026-02-18 UTC  
\* = Non-2xx/3xx responses or socket errors occurred

### Hello World (`GET /`)

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| .NET API         | 8001 | 118,337.61 | 3.64ms      | 78.91ms     | 2,366,960      | 20.99MB      | 31.9MiB  |
| Haskell Servant  | 8006 | 115,297.04 | 1.11ms      | 106.67ms    | 2,306,053      | 21.00MB      | 213.8MiB |
| Rust Actix       | 8005 | 111,793.63 | 8.65ms      | 60.47ms     | 2,236,041      | 14.39MB      | 4.512MiB |
| Bun API          | 8002 | 99,587.74  | 1.28ms      | 62.35ms     | 1,991,851      | 12.82MB      | 16.16MiB |
| Deno API         | 8011 | 85,530.71  | 1.46ms      | 73.17ms     | 1,710,746      | 12.89MB      | 34.98MiB |
| .NET AOT         | 8013 | 63,397.83  | 6.74ms      | 74.39ms     | 1,269,368      | 11.25MB      | 18.13MiB |
| Go Fiber         | 8008 | 62,286.61  | 15.70ms     | 77.64ms     | 1,245,847      | 8.91MB       | 13.43MiB |
| Erlang Cowboy    | 8010 | 56,637.99  | 2.23ms      | 94.27ms     | 1,132,835      | 8.16MB       | 96.49MiB |
| C Microhttpd     | 8018 | 54,935.98  | 12.34ms     | 68.93ms     | 1,098,912      | 7.07MB       | 4.484MiB |
| C++ Drogon       | 8017 | 52,921.37  | 13.04ms     | 70.24ms     | 1,058,558      | 8.68MB       | 10.98MiB |
| Elixir Phoenix   | 8007 | 39,730.31  | 3.33ms      | 59.24ms     | 794,640        | 9.62MB       | 162.5MiB |
| Fastify API      | 8003 | 32,725.09  | 10.49ms     | 1.04s       | 654,643        | 6.18MB       | 27.62MiB |
| Java Spring Boot | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| Express API      | 8014 | 25,475.41  | 5.52ms      | 398.78ms    | 509,579        | 4.79MB       | 38.84MiB |
| Swift Vapor      | 8012 | 24,274.85  | 4.99ms      | 60.93ms     | 485,537        | 4.03MB       | 4.625MiB |
| Python Litestar  | 8000 | 21,524.36  | 17.53ms     | 77.84ms     | 430,889        | 3.12MB       | 148MiB   |
| Python FastAPI   | 8004 | 20,748.27  | 12.73ms     | 61.11ms     | 414,988        | 3.01MB       | 192.3MiB |
| Ruby Rails       | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Django API       | 8016 | 1,417.66\* | 164.76ms    | 1.61s       | 28,376         | 418.07KB     | 421.4MiB |

### Orders (`GET /orders`)

| Framework        | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| .NET API         | 8001 | 12,067.89 | 17.60ms     | 89.79ms     | 241,541        | 128.21MB     | 68.57MiB |
| .NET AOT         | 8013 | 10,335.60 | 17.99ms     | 93.31ms     | 207,045        | 109.80MB     | 34.1MiB  |
| Rust Actix       | 8005 | 9,376.94  | 25.56ms     | 287.83ms    | 187,772        | 101.86MB     | 15.56MiB |
| Go Fiber         | 8008 | 8,051.70  | 28.15ms     | 516.70ms    | 161,447        | 88.24MB      | 60.96MiB |
| Bun API          | 8002 | 5,845.62  | 20.60ms     | 84.61ms     | 116,956        | 62.38MB      | 22.58MiB |
| C Microhttpd     | 8018 | 5,598.50  | 25.25ms     | 137.41ms    | 112,180        | 60.74MB      | 4.691MiB |
| Python Litestar  | 8000 | 4,158.40  | 32.54ms     | 171.26ms    | 83,184         | 45.24MB      | 159.2MiB |
| Elixir Phoenix   | 8007 | 3,411.77  | 35.18ms     | 110.29ms    | 68,284         | 37.45MB      | 187.7MiB |
| Express API      | 8014 | 2,752.77  | 45.45ms     | 532.15ms    | 55,087         | 29.54MB      | 48.51MiB |
| Erlang Cowboy    | 8010 | 2,240.62  | 53.50ms     | 168.07ms    | 44,832         | 22.88MB      | 162.1MiB |
| C++ Drogon       | 8017 | 2,169.70  | 58.65ms     | 300.55ms    | 43,500         | 23.62MB      | 42.31MiB |
| Python FastAPI   | 8004 | 1,912.48  | 62.77ms     | 194.96ms    | 38,260         | 20.81MB      | 202.2MiB |
| Fastify API      | 8003 | 1,502.87  | 88.97ms     | 1.85s       | 30,077         | 16.13MB      | 45.64MiB |
| Deno API         | 8011 | 1,135.43  | 105.51ms    | 317.83ms    | 22,736         | 12.14MB      | 104.5MiB |
| Django API       | 8016 | 832.70\*  | 142.94ms    | 2.00s       | 16,674         | 9.18MB       | 396.6MiB |
| Haskell Servant  | 8006 | 618.77\*  | 180.92ms    | 1.93s       | 12,397         | 6.74MB       | 248.4MiB |
| Swift Vapor      | 8012 | 592.98    | 203.72ms    | 838.94ms    | 11,891         | 6.12MB       | 20.16MiB |
| Java Spring Boot | 8009 | 571.97\*  | 241.20ms    | 2.00s       | 11,449         | 6.52MB       | 231.1MiB |
| Ruby Rails       | 8015 | 423.29\*  | 194.37ms    | 1.80s       | 8,486          | 4.58MB       | 318.1MiB |

## Projects

### PythonLightStar

- **Framework**: Litestar with Granian ASGI server
- **Database**: PostgreSQL with Psycopg3 and connection pooling
- **Serialization**: msgspec
- **Event Loop**: uvloop
- **Workers**: 4 (matching FastAPI for fair comparison)
- **Connection Pool**: 15 per worker (60 total)
- **HTTP**: HTTP/1 only for maximum performance
- **Backlog**: 4096 connections

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

### NodeExpressApi

- **Runtime**: Node.js 22
- **Framework**: Express (most popular Node.js web framework)
- **Database**: PostgreSQL with `postgres` driver and connection pooling
- **Connection Pool**: 90 connections with prepared statements
- **Optimizations**: Disabled unnecessary middleware (x-powered-by, etag)

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

- **Framework**: Phoenix 1.7 with Cowboy web server
- **Database**: PostgreSQL with Ecto and Postgrex
- **Connection Pool**: 90 connections with queue management
- **Concurrency**: BEAM VM with lightweight processes
- **Runtime**: Erlang/OTP for fault tolerance and scalability
- **Compilation**: Production release build with optimizations

### GoFiber

- **Framework**: Fiber (Express-inspired Go web framework)
- **Database**: PostgreSQL with pgx/v5 driver and connection pooling
- **Connection Pool**: 90 max connections, 10 min connections
- **Runtime**: Go 1.23 with goroutines
- **Compilation**: Static binary with size optimization

### JavaSpringBoot

- **Framework**: Spring Boot 3.2 with WebFlux (reactive)
- **Database**: PostgreSQL with R2DBC and connection pooling
- **Connection Pool**: 120 max connections, 30 initial connections
- **Runtime**: Java 21 with ZGC (low-latency garbage collector)
- **Reactive**: Project Reactor for non-blocking operations
- **Optimizations**: Netty tuning (8 IO workers, 500 max connections), reactive buffering, minimal logging

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

### RubyRails

- **Framework**: Ruby on Rails 7.1 (API-only mode)
- **Database**: PostgreSQL with pg gem and connection pooling
- **Connection Pool**: 90 connections with prepared statements
- **Server**: Puma with 4 workers
- **Runtime**: Ruby 3.3.0
- **JSON**: Oj for fast JSON serialization
- **Optimizations**: Bootsnap precompilation, minimal logging

### DjangoApi

- **Framework**: Django 5.0 with Django REST Framework
- **Database**: PostgreSQL with psycopg3 and persistent connections
- **Connection Pool**: Persistent connections with health checks
- **Server**: Gunicorn with 4 workers and 4 threads per worker
- **Runtime**: Python 3.11
- **JSON**: orjson for fast JSON serialization
- **Optimizations**: Disabled migrations, minimal middleware, direct SQL queries

### CppDrogon

- **Framework**: Drogon 1.9 (high-performance C++ web framework)
- **Database**: PostgreSQL with libpq and connection pooling
- **Connection Pool**: 90 connections
- **Workers**: 14 threads
- **Compilation**: Release build with -O3 optimizations
- **Runtime**: Native compiled binary

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
- Ruby 3.3.0+ (for local Ruby development)
- Erlang/OTP 26+ and rebar3 (for local Erlang development)
- C++ compiler with C++17 support, CMake 3.16+, and Drogon framework (for local C++ development)
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

````bash
docker-compose up --build

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
- **Express API**: http://localhost:8014
- **Ruby Rails API**: http://localhost:8015
- **Django API**: http://localhost:8016
- **C++ Drogon API**: http://localhost:8017
- **C Microhttpd API**: http://localhost:8018
- **PostgreSQL**: localhost:5432

To run in detached mode:

```bash
docker-compose up -d --build
````

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
granian --interface asgi --host 0.0.0.0 --port 8000 --workers 4 --blocking-threads 1 --http 1 --http1-buffer-size 32768 --backlog 4096 --loop uvloop --no-access-log --respawn-failed-workers main:app
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

### Express API

```bash
cd NodeExpressApi
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
MIX_ENV=prod mix release
_build/prod/rel/elixir_phoenix_api/bin/elixir_phoenix_api start
```

Or for development:

```bash
cd ElixirPhoenix
mix deps.get
iex -S mix phx.server
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

### Ruby Rails API

```bash
cd RubyRails
bundle install
bundle exec rails server -b 0.0.0.0 -p 8000 -e production
```

### Django API

```bash
cd DjangoApi
pip install -r requirements.txt
gunicorn --bind 0.0.0.0:8000 --workers 4 --worker-class sync --threads 4 djangoapi.wsgi:application
```

### C++ Drogon API

```bash
cd CppDrogon
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
./cpp-drogon-api
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

### Express API

```bash
cd NodeExpressApi
docker build -t express-api .
docker run -p 8000:8000 --env-file .env express-api
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

### Ruby Rails API

```bash
cd RubyRails
docker build -t ruby-rails-api .
docker run -p 8000:8000 --env-file .env ruby-rails-api
```

### Django API

```bash
cd DjangoApi
docker build -t django-api .
docker run -p 8000:8000 --env-file .env django-api
```

### C++ Drogon API

```bash
cd CppDrogon
docker build -t cpp-drogon-api .
docker run -p 8000:8000 --env-file .env cpp-drogon-api
```

## Performance Tuning

### Python Litestar

- Connection pool size: 15 per worker (60 total with 4 workers)
- Workers: 4
- Blocking threads: 1 (minimal overhead)
- HTTP/1 only (no auto-negotiation overhead)
- HTTP/1 buffer: 32KB (increased from 8KB default)
- Backlog: 4096 (high connection queue)
- uvloop for async performance
- Prepared statements enabled
- Per-worker connection pool for better isolation
- Compression disabled for maximum speed
- Failed worker auto-respawn enabled

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

### Express API

- Express (most popular Node.js framework)
- Connection pool size: 90
- Prepared statements enabled
- Middleware optimizations (disabled x-powered-by, etag)
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

- Phoenix framework with Cowboy HTTP server
- Connection pool size: 90 connections
- Queue target: 50ms, Queue interval: 1000ms
- BEAM VM concurrency model with lightweight processes
- Production release build with compilation optimizations
- Ecto query optimization with direct SQL queries
- JSON encoding with Jason library

### Go Fiber API

- Fiber framework
- Connection pool: 90 max, 10 min connections
- Goroutines for concurrency
- pgx/v5 driver with prepared statements
- Static binary with optimizations

### Java Spring Boot API

- Spring Boot WebFlux (reactive/non-blocking)
- R2DBC connection pool: 100 max, 20 initial connections
- Project Reactor for reactive streams
- ZGC with generational mode for low-latency GC
- Java 21 with virtual threads support
- Netty optimizations (8 IO workers, 500 max connections)
- Minimal logging for maximum performance
- Record classes for zero-copy data transfer

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

### Ruby Rails API

- Rails 7.1 API-only mode for minimal overhead
- Puma web server with 4 workers
- Connection pool: 90 connections with prepared statements
- Oj for high-performance JSON serialization
- Bootsnap for faster boot times
- Direct SQL queries (bypassing ActiveRecord for reads)
- Minimal logging in production

### Django API

- Django 5.0 with Django REST Framework
- Gunicorn with 4 workers and 4 threads per worker (16 concurrent requests)
- Persistent database connections with health checks
- orjson for high-performance JSON serialization
- Disabled migrations and unnecessary middleware
- Direct SQL queries with raw cursors
- Minimal logging (NullHandler)
- Connection reuse with CONN_MAX_AGE

### C++ Drogon API

- Drogon framework (one of the fastest C++ web frameworks)
- Connection pool size: 90
- Worker threads: 14
- Native compiled binary with -O3 optimizations
- libpq for PostgreSQL connectivity
- Zero-overhead JSON serialization with jsoncpp
- Async I/O with event-driven architecture

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

# Express API
curl http://localhost:8014/
curl http://localhost:8014/orders

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

# Ruby Rails API
curl http://localhost:8015/
curl http://localhost:8015/orders

# Django API
curl http://localhost:8016/
curl http://localhost:8016/orders

# C++ Drogon API
curl http://localhost:8017/
curl http://localhost:8017/orders

# C Microhttpd API
curl http://localhost:8018/
curl http://localhost:8018/orders
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
wrk -t 2 -c 120 -d 20s http://localhost:8014/orders  # Express
wrk -t 2 -c 120 -d 20s http://localhost:8015/orders  # Ruby Rails
wrk -t 2 -c 120 -d 20s http://localhost:8016/orders  # Django
wrk -t 2 -c 120 -d 20s http://localhost:8017/orders  # C++ Drogon
wrk -t 2 -c 120 -d 20s http://localhost:8018/orders  # C Microhttpd
```
