# Web API Performance Comparison

This repository contains performance-focused web API implementations in Python (Litestar), .NET (ASP.NET Core), Node.js (Bun), and Node.js (Fastify) with PostgreSQL database integration.

## Projects

### PythonLightStar

- **Framework**: Litestar with Granian ASGI server
- **Database**: PostgreSQL with Psycopg3 and connection pooling
- **Serialization**: msgspec
- **Event Loop**: uvloop

### DotNetApi

- **Framework**: ASP.NET Core 9.0 (Minimal APIs)
- **Database**: PostgreSQL with Npgsql (raw SQL, no ORM)
- **Connection Pooling**: NpgsqlDataSource with multiplexing

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

Run all services (database + all four APIs) with a single command:

```bash
docker-compose up --build
```

The services will be available at:

- **Python Litestar API**: http://localhost:8000
- **.NET API**: http://localhost:8001
- **Bun API**: http://localhost:8002
- **Fastify API**: http://localhost:8003
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

### .NET API

```bash
cd DotNetApi
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

## Running with Docker

### Python Litestar

```bash
cd PythonLightStar
docker build -t python-litestar-api .
docker run -p 8000:8000 --env-file .env python-litestar-api
```

### .NET API

```bash
cd DotNetApi
docker build -t dotnet-api .
docker run -p 8000:8000 -e DATABASE_URL=postgresql://apiuser:apipassword@host.docker.internal:5432/ordersdb dotnet-api
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

## Performance Tuning

### Python Litestar

- Connection pool size: 90
- Workers: 14
- uvloop for async performance
- Prepared statements enabled

### .NET API

- Raw SQL with Npgsql (no ORM overhead)
- Connection pool size: 90
- Connection multiplexing enabled
- Prepared statements for queries
- Minimal API for reduced overhead

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
```

## Performance Testing

You can use tools like `wrk`, `ab` (Apache Bench), or `k6` to benchmark all four APIs:

```bash
# Example with wrk
wrk -t12 -c400 -d30s http://localhost:8000/orders  # Python
wrk -t12 -c400 -d30s http://localhost:8001/orders  # .NET
wrk -t12 -c400 -d30s http://localhost:8002/orders  # Bun
wrk -t12 -c400 -d30s http://localhost:8003/orders  # Fastify
```
