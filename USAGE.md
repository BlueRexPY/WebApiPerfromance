# Usage

## Requirements

- Docker + Docker Compose
- Python 3.11+
- `wrk` (`apt install wrk` / `brew install wrk`)

## Install

```bash
pip install -e .
```

## Run

```bash
# All services, all tests
python -m benchmarks run

# One service
python -m benchmarks run --service dotnetapiaot

# One test type
python -m benchmarks run --test hello_world

# Both filters
python -m benchmarks run --service rustactix --test orders

# Custom wrk settings (defaults: -t 2 -c 120 -d 20)
python -m benchmarks run --threads 4 --connections 200 --duration 30

# Multiple services/tests (repeat the flag)
python -m benchmarks run --service dotnetapi --service rustactix

# Run all services in parallel — starts all containers, fires all wrk processes simultaneously
python -m benchmarks run --parallel

# Cap concurrent wrk processes (default: 0 = unlimited, all at once)
python -m benchmarks run --parallel --max-workers 8

# Start monitoring stack (Prometheus + Grafana + cAdvisor) alongside benchmarks
python -m benchmarks run --monitoring

# Combine flags
python -m benchmarks run --service rustactix --monitoring --parallel
```

## Other Commands

```bash
# List all services and test types
python -m benchmarks list

# Regenerate summary markdown from existing results
python -m benchmarks summary
python -m benchmarks summary --test hello_world

# Stop all running containers
python -m benchmarks stop
```

## Services

| Name                 | Port |
| -------------------- | ---- |
| litestar             | 8000 |
| dotnetapi            | 8001 |
| bunapi               | 8002 |
| fastifyapi           | 8003 |
| fastapi              | 8004 |
| rustactix            | 8005 |
| haskellservant       | 8006 |
| elixirphoenix        | 8007 |
| gofiber              | 8008 |
| javaspringboot       | 8009 |
| erlangcowboy         | 8010 |
| denoapi              | 8011 |
| swiftvapor           | 8012 |
| dotnetapiaot         | 8013 |
| expressapi           | 8014 |
| rubyrails            | 8015 |
| djangoapi            | 8016 |
| cppdrogon            | 8017 |
| cmicrohttpd          | 8018 |
| fsharpapi            | 8019 |
| fsharpapiaot         | 8020 |
| javaquarkus          | 8021 |
| rustaxum             | 8022 |
| gochi                | 8023 |
| zigzap               | 8024 |
| javamicronaut        | 8026 |
| kotlinktor           | 8027 |
| phpswoole            | 8028 |
| nestjsexpress        | 8029 |
| nestjsfastify        | 8030 |
| clibuv               | 8031 |
| gonethttp            | 8032 |
| rubysinatra          | 8033 |
| elixirplug           | 8034 |
| dotnetcarter         | 8035 |
| dotnetcarteraot      | 8036 |
| phplaravel           | 8037 |
| nodekoaapi           | 8038 |
| nodehonoapi          | 8039 |
| rubyfalcon           | 8040 |
| expressclusterapi    | 8041 |
| fastifyclusterapi    | 8042 |
| honoclusterapi       | 8043 |
| koaclusterapi        | 8044 |
| nestjsexpresscluster | 8045 |
| nestjsfastifycluster | 8046 |

## Test Types

| Name        | Path      | Description              |
| ----------- | --------- | ------------------------ |
| hello_world | `/`       | Simple JSON, no database |
| orders      | `/orders` | DB query, 100 rows       |

## Results

Written to `results/{ServiceDir}/{TestType}.md`.  
Summaries: `results/Summary.HelloWorld.md`, `results/Summary.Orders.md`.

## Add a Service

1. Add a `Service(...)` entry to `SERVICES` in [benchmarks/config.py](benchmarks/config.py).
2. Add the service to [docker-compose.yml](docker-compose.yml).

## Add a Test Type

Add a `TestType(...)` entry to `TEST_TYPES` in [benchmarks/config.py](benchmarks/config.py).
