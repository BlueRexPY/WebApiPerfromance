---
name: webapi-benchmark
description: "WebApiPerformance project workflow. Use when: adding a new app/framework/language to the benchmark suite; registering a new service; writing GET / and GET /orders endpoints; adding WebSocket endpoints (WS Echo, WS Orders); adding a Dockerfile; adding a docker-compose entry; running benchmarks (wrk HTTP or k6 WebSocket); recording results; regenerating summary markdown tables; updating docs after a test run."
argument-hint: "add <AppName> | run <service> | run ws_echo | summary"
---

# WebApiPerformance — Benchmark Workflow

## Project Overview

Each app lives in `apps/<DirName>/` and must:

- Expose **port 8000** inside the container
- Implement `GET /` → `{"message": "Hello, World!"}` (JSON)
- Implement `GET /orders` → query `LIMIT 100 OFFSET 1000` from `orders` table, return JSON array

The benchmark harness (`benchmarks/`) builds the Docker image, starts the container, runs `wrk`, captures memory stats, writes per-service markdown files to `results/<DirName>/`, and regenerates `results/Summary.*.md`.

---

## 1. Adding a New App

### Step 1 — Create the app directory

```
apps/<DirName>/          # PascalCase, e.g. GoEcho, PythonFastApi, RustAxum
  Dockerfile
  <source files>
```

### Step 2 — Implement the two required endpoints

**`GET /`** — Hello World (no DB):

```json
{ "message": "Hello, World!" }
```

**`GET /orders`** — Orders from PostgreSQL:

- SQL: `SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000`
- Response: JSON array of order objects

The DB connection string is injected via the `DATABASE_URL` environment variable. Common formats:

- **Go/Rust/Python** (libpq-style): `postgresql://user:pass@db:5432/ordersdb`
- **C# Npgsql**: `Host=db;Port=5432;Database=ordersdb;Username=user;Password=pass;Maximum Pool Size=120;Multiplexing=true`
- **Java JDBC**: `jdbc:postgresql://db:5432/ordersdb`

The schema for reference ([database/init.sql](../../../database/init.sql)):

```sql
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    total_cents INTEGER NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
```

### Step 3 — Write the Dockerfile

All Dockerfiles must:

- Use a multi-stage build (builder + runtime) when possible to keep images small
- `EXPOSE 8000`
- Start the server listening on `0.0.0.0:8000`

See [apps/DotNetApi/Dockerfile](../../../apps/DotNetApi/Dockerfile) (C#) or [apps/RustActix/Dockerfile](../../../apps/RustActix/Dockerfile) (Rust) for reference patterns.

### Step 4 — Add the service to `docker-compose.yml`

Pick the **next available port** from the existing list (check `benchmarks/config.py` `SERVICES` dict for the highest port in use, then increment).

Add a block following this template:

```yaml
<compose-service-name>: # lowercase, e.g. goecho, pythonblacksheep
  build: ./apps/<DirName>
  ports:
    - "<HOST_PORT>:8000"
  environment:
    DATABASE_URL: postgresql://${POSTGRES_USER:-apiuser}:${POSTGRES_PASSWORD:-apipassword}@db:5432/${POSTGRES_DB:-ordersdb}
  depends_on:
    db:
      condition: service_healthy
  deploy:
    resources:
      limits:
        cpus: "2.0"
        memory: 1G
      reservations:
        cpus: "1.0"
        memory: 512M
  networks:
    - webapi-network
```

> For runtimes that use a different `DATABASE_URL` format (e.g. C# Npgsql, Java JDBC), copy the `environment` block from a similar existing service rather than using the libpq-style string.

### Step 5 — Register the service in `benchmarks/config.py`

Open [benchmarks/config.py](../../../benchmarks/config.py) and add one `Service(...)` entry to the `SERVICES` list:

```python
Service("<compose-service-name>", <HOST_PORT>, "<Display Name>", "<DirName>"),
```

Fields:
| Field | Example | Notes |
|---|---|---|
| `name` | `"goecho"` | Must match the key in `docker-compose.yml` |
| `port` | `8096` | The host port from `docker-compose.yml` |
| `display_name` | `"Go Echo"` | Shown in summary tables |
| `dir_name` | `"GoEcho"` | Results subdirectory under `results/`; must match `apps/` folder name |

Insert the entry near other services of the same language/runtime family to keep the registry readable.

### Step 6 — Add the language badge to `README.md` (if new language)

Find the `<!-- Languages -->` or `<!-- Runtimes -->` block at the top of `README.md` and add a shields.io badge:

```markdown
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white)
```

Then add the framework link to the language's bullet point in the framework list below the badges.

---

## 2. Running Benchmarks & Recording Results

### Prerequisites

- Docker + Docker Compose running
- `wrk` installed (`apt install wrk` or `brew install wrk`)
- Python dependencies installed: `pip install -e .` (from project root)

### Run a single new service

```bash
python -m benchmarks run --service <compose-service-name>
```

This will:

1. Start the `db` container if not running
2. Build + start the service container
3. Wait up to 120 s for the service to respond
4. Send 5 warmup requests
5. Run `wrk -t 2 -c 120 -d 20s` for each test type (`hello_world`, `orders`)
6. Collect `docker stats` memory snapshot
7. Write `results/<DirName>/HelloWorld.md` and `results/<DirName>/Orders.md`
8. Stop the container

### Run specific test types only

```bash
python -m benchmarks run --service <name> --test hello_world
python -m benchmarks run --service <name> --test orders
```

### Run all services (full suite)

```bash
python -m benchmarks run            # sequential (safe default)
python -m benchmarks run --parallel # all at once (faster, needs more RAM)
python -m benchmarks run --parallel --max-workers 8  # cap concurrency
```

### Custom wrk parameters (defaults: -t 2 -c 120 -d 20s)

```bash
python -m benchmarks run --service <name> --threads 4 --connections 200 --duration 30
```

### Regenerate summary tables from existing results

```bash
python -m benchmarks summary                  # all test types
python -m benchmarks summary --test hello_world
python -m benchmarks summary --test orders
```

This reads every `results/<DirName>/<TestType>.md` file, parses the `Requests/sec` line, sorts descending, and overwrites `results/Summary.HelloWorld.md` and/or `results/Summary.Orders.md`.

### Stop all running containers

```bash
python -m benchmarks stop
```

### Verify results were recorded

After a run the following files should exist:

```
results/<DirName>/HelloWorld.md    ← per-service hello-world result
results/<DirName>/Orders.md        ← per-service orders result
results/Summary.HelloWorld.md      ← updated ranking table (all services)
results/Summary.Orders.md          ← updated ranking table (all services)
```

---

## 3. Adding WebSocket Support to an App

WebSocket tests use **k6** (not wrk). Two test types are defined:

| Test type   | Path         | k6 script                 | Analogous HTTP test |
| ----------- | ------------ | ------------------------- | ------------------- |
| `ws_echo`   | `/ws/echo`   | `benchmarks/ws/echo.js`   | `hello_world`       |
| `ws_orders` | `/ws/orders` | `benchmarks/ws/orders.js` | `orders`            |

### Step 1 — Implement the two WebSocket endpoints

**`/ws/echo`** — Echo any received text message back verbatim.

**`/ws/orders`** — On receiving any trigger message, query 100 orders from the DB and send the JSON array as a single text frame, then close.

Reference implementation: [apps/DotNetApi/Program.cs](../../../apps/DotNetApi/Program.cs)

```csharp
app.UseWebSockets();

app.Map("/ws/echo", async (HttpContext context) =>
{
    if (!context.WebSockets.IsWebSocketRequest) { context.Response.StatusCode = 400; return; }
    using var ws = await context.WebSockets.AcceptWebSocketAsync();
    var buffer = new byte[1024];
    while (ws.State == WebSocketState.Open)
    {
        var result = await ws.ReceiveAsync(buffer, CancellationToken.None);
        if (result.MessageType == WebSocketMessageType.Close) break;
        await ws.SendAsync(buffer.AsMemory(0, result.Count), WebSocketMessageType.Text, true, CancellationToken.None);
    }
    await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, "done", CancellationToken.None);
});

app.Map("/ws/orders", async (HttpContext context, NpgsqlDataSource dataSource) =>
{
    if (!context.WebSockets.IsWebSocketRequest) { context.Response.StatusCode = 400; return; }
    using var ws = await context.WebSockets.AcceptWebSocketAsync();
    var buffer = new byte[64];
    var recv = await ws.ReceiveAsync(buffer, CancellationToken.None);
    if (recv.MessageType == WebSocketMessageType.Close) { await ws.CloseAsync(...); return; }

    // query 100 orders, serialize to JSON, send as one text frame
    await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, "done", CancellationToken.None);
});
```

For other languages/frameworks adapt to the equivalent WebSocket upgrade API. The important contracts are:

- Upgrade only on a real WS request; return HTTP 400 otherwise
- Echo: receive → send same bytes → loop
- Orders: receive trigger → query DB → send JSON → close

### Step 2 — No docker-compose changes needed

WebSocket endpoints live on the same container/port as the HTTP endpoints. The WS URL scheme (`ws://`) is derived automatically from the service's existing `port` in `benchmarks/config.py`.

### Step 3 — Register WS support (nothing extra in config.py)

The `ws_echo` and `ws_orders` test types are already defined in `benchmarks/config.py`. A service automatically participates in WS benchmarks once you run them with `--test ws_echo` / `--test ws_orders`.

### Step 4 — Run the WS benchmarks

```bash
# Prerequisites: k6 installed (snap install k6)

# Echo test for one service
python -m benchmarks run --service <name> --test ws_echo

# Orders WS test for one service
python -m benchmarks run --service <name> --test ws_orders

# Custom VU count (default 120) or duration (default 20s)
python -m benchmarks run --service <name> --test ws_echo --vus 50 --duration 30

# Run all test types (HTTP + WS) for a service
python -m benchmarks run --service <name>
```

k6 runs with `--no-color`, passes `WS_URL=ws://127.0.0.1:<port><path>` as an env var, and exits after the test. Output is parsed automatically.

### Step 5 — Result files written

```
results/<DirName>/WsEcho.md     ← iterations/sec, avg RTT, p95 RTT, VU count
results/<DirName>/WsOrders.md   ← same, for orders WS test
```

These files use the same `Requests/sec` / `Avg Latency` key format as HTTP results, so `python -m benchmarks summary` can aggregate them alongside HTTP results.

### Step 6 — Regenerate summaries

```bash
python -m benchmarks summary --test ws_echo
python -m benchmarks summary --test ws_orders
```

---

## 4. k6 WebSocket Scripts Reference

Scripts live in `benchmarks/ws/`. Each uses a `WS_URL` env var injected by the runner.

**`benchmarks/ws/echo.js`** — Echo RTT test:

- Connects, sends `"ping"`, measures time until response, records to `Trend("ws_echo_rtt_ms")`
- 120 VUs × 20 s by default

**`benchmarks/ws/orders.js`** — Orders push test:

- Connects, sends `"go"`, waits for JSON array, parses and checks `length == 100`
- Records RTT to `Trend("ws_orders_rtt_ms")`

> **Important**: Trend metrics must NOT use the `true` (isTime) second constructor parameter. Using `new Trend("name", true)` causes k6 to display values with unit suffixes (e.g. `avg=170µs`) which breaks the regex parser. Always use `new Trend("name")`.

---

## Quick Checklist — Adding WebSocket Support to an Existing App

- [ ] `GET /ws/echo` — upgrade, echo loop, close on client close
- [ ] `GET /ws/orders` — upgrade, receive trigger, query 100 orders, send JSON, close
- [ ] HTTP 400 for non-WS requests to both paths
- [ ] `python -m benchmarks run --service <name> --test ws_echo` completes without errors
- [ ] `python -m benchmarks run --service <name> --test ws_orders` completes without errors
- [ ] `results/<DirName>/WsEcho.md` and `WsOrders.md` exist
- [ ] `python -m benchmarks summary --test ws_echo` run and summary updated

---

## Quick Checklist — Adding a New App (HTTP)

- [ ] `apps/<DirName>/` created with source + `Dockerfile`
- [ ] `GET /` returns `{"message": "Hello, World!"}`
- [ ] `GET /orders` queries `LIMIT 100 OFFSET 1000`, returns JSON array
- [ ] `EXPOSE 8000` + server bound to `0.0.0.0:8000`
- [ ] `docker-compose.yml` entry added (unique port, correct `DATABASE_URL` format)
- [ ] `benchmarks/config.py` `SERVICES` entry added (`name`, `port`, `display_name`, `dir_name`)
- [ ] `README.md` badge and framework link added (if new language/runtime)
- [ ] `python -m benchmarks run --service <name>` completes without errors
- [ ] `results/<DirName>/HelloWorld.md` and `Orders.md` exist
- [ ] `python -m benchmarks summary` run and `Summary.*.md` files updated
- [ ] _(Optional)_ WebSocket endpoints added — see **Section 3** above
