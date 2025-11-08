# Hello World Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:800X`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results Summary

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ |
| Bun API          | 8002 | 123,123.15 | 1.01ms      | 62.06ms     | 2,464,336      | 15.85MB      |
| .NET API         | 8001 | 76,975.25  | 4.17ms      | 71.67ms     | 1,541,304      | 13.65MB      |
| Fastify API      | 8003 | 64,871.74  | 2.33ms      | 281.60ms    | 1,298,648      | 12.25MB      |
| Rust Actix       | 8005 | 48,972.36  | 11.37ms     | 65.59ms     | 981,202        | 6.30MB       |
| Haskell Servant  | 8006 | 32,973.21  | 19.19ms     | 83.70ms     | 661,412        | 6.01MB       |
| Python FastAPI   | 8004 | 24,908.39  | 12.11ms     | 87.63ms     | 498,526        | 3.61MB       |
| Python Litestar  | 8000 | 13,449.94  | 24.93ms     | 94.26ms     | 269,630        | 1.95MB       |
| Elixir Phoenix   | 8007 | -          | -           | -           | -              | -            |
| Go Fiber         | 8008 | -          | -           | -           | -              | -            |
| Java Spring Boot | 8009 | -          | -           | -           | -              | -            |
| Erlang Cowboy    | 8010 | -          | -           | -           | -              | -            |

## Detailed Results

### Python Litestar (Port 8000)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000
Running 20s test @ http://127.0.0.1:8000
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.93ms   30.00ms  94.26ms   79.39%
    Req/Sec     6.76k     2.52k   12.81k    72.25%
  269630 requests in 20.05s, 39.09MB read
Requests/sec:  13449.94
Transfer/sec:      1.95MB
```

### .NET API (Port 8001)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001
Running 20s test @ http://127.0.0.1:8001
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.17ms    9.18ms  71.67ms   92.16%
    Req/Sec    38.74k    18.83k   96.37k    72.75%
  1541304 requests in 20.02s, 273.40MB read
Requests/sec:  76975.25
Transfer/sec:     13.65MB
```

### Bun API (Port 8002)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002
Running 20s test @ http://127.0.0.1:8002
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.01ms    1.12ms  62.06ms   99.27%
    Req/Sec    61.94k     4.92k   70.62k    78.00%
  2464336 requests in 20.02s, 317.27MB read
Requests/sec: 123123.15
Transfer/sec:     15.85MB
```

### Fastify API (Port 8003)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003
Running 20s test @ http://127.0.0.1:8003
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.33ms    8.11ms 281.60ms   99.42%
    Req/Sec    32.64k     2.94k   35.91k    95.00%
  1298648 requests in 20.02s, 245.22MB read
Requests/sec:  64871.74
Transfer/sec:     12.25MB
```

### Rust Actix (Port 8005)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005
Running 20s test @ http://127.0.0.1:8005
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.37ms   17.09ms  65.59ms   80.93%
    Req/Sec    24.62k    11.07k   83.79k    93.00%
  981202 requests in 20.04s, 126.33MB read
Requests/sec:  48972.36
Transfer/sec:      6.30MB
```

### Python FastAPI (Port 8004)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004
Running 20s test @ http://127.0.0.1:8004
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.11ms   16.00ms  87.63ms   81.08%
    Req/Sec    12.53k     2.65k   17.55k    66.25%
  498526 requests in 20.01s, 72.27MB read
Requests/sec:  24908.39
Transfer/sec:      3.61MB
```

### Python Litestar (Port 8000)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000
Running 20s test @ http://127.0.0.1:8000
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.93ms   30.00ms  94.26ms   79.39%
    Req/Sec     6.76k     2.52k   12.81k    72.25%
  269630 requests in 20.05s, 39.09MB read
Requests/sec:  13449.94
Transfer/sec:      1.95MB
```

### Haskell Servant (Port 8006)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006
Running 20s test @ http://127.0.0.1:8006
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.19ms   25.54ms  83.70ms   79.14%
    Req/Sec    16.57k     3.59k   32.69k    70.50%
  661412 requests in 20.06s, 120.48MB read
Requests/sec:  32973.21
Transfer/sec:      6.01MB
```

### Elixir Phoenix (Port 8007)

```
<!-- To be tested -->
```

### Go Fiber (Port 8008)

```
<!-- To be tested -->
```

### Java Spring Boot (Port 8009)

```
<!-- To be tested -->
```

### Erlang Cowboy (Port 8010)

```
<!-- To be tested -->
```

## Notes

- All tests performed on the same hardware
- Tests run against the root `/` endpoint returning "Hello, World!"
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
