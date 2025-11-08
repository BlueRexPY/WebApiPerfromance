# Hello World Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results Summary

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ |
| Bun API          | 8002 | 141,728.97 | 844.49us    | 5.48ms      | 2,836,940      | 18.25MB      |
| Erlang Cowboy    | 8010 | 89,270.28  | 1.40ms      | 43.73ms     | 1,786,173      | 12.86MB      |
| .NET AOT         | 8013 | 73,548.20  | 3.79ms      | 58.79ms     | 1,472,209      | 13.05MB      |
| Fastify API      | 8003 | 64,871.74  | 2.33ms      | 281.60ms    | 1,298,648      | 12.25MB      |
| .NET API         | 8001 | 62,185.33  | 4.52ms      | 69.04ms     | 1,245,119      | 11.03MB      |
| Rust Actix       | 8005 | 48,972.36  | 11.37ms     | 65.59ms     | 981,202        | 6.30MB       |
| Go Fiber         | 8008 | 35,110.87  | 17.90ms     | 82.57ms     | 704,375        | 5.02MB       |
| Haskell Servant  | 8006 | 32,973.21  | 19.19ms     | 83.70ms     | 661,412        | 6.01MB       |
| Python FastAPI   | 8004 | 24,908.39  | 12.11ms     | 87.63ms     | 498,526        | 3.61MB       |
| Python Litestar  | 8000 | 15,523.37  | 18.84ms     | 77.98ms     | 311,230        | 2.25MB       |
| Java Spring Boot | 8009 | 1,178.04   | 139.90ms    | 1.94s       | 23,631         | 112.74KB     |
| Elixir Phoenix   | 8007 | -          | -           | -           | -              | -            |

## Detailed Results

### Python Litestar (Port 8000)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000
Running 20s test @ http://127.0.0.1:8000
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.84ms   23.10ms  77.98ms   79.83%
    Req/Sec     7.82k     3.19k   35.60k    88.00%
  311230 requests in 20.05s, 45.12MB read
Requests/sec:  15523.37
Transfer/sec:      2.25MB
```

### .NET API (Port 8001)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001
Running 20s test @ http://127.0.0.1:8001
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.52ms    8.92ms  69.04ms   91.16%
    Req/Sec    31.28k    10.64k   74.27k    68.00%
  1245119 requests in 20.02s, 220.86MB read
Requests/sec:  62185.33
Transfer/sec:     11.03MB
```

### Bun API (Port 8002)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002
Running 20s test @ http://127.0.0.1:8002
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   844.49us  215.56us   5.48ms   90.88%
    Req/Sec    71.31k     5.53k   88.09k    72.75%
  2836940 requests in 20.02s, 365.24MB read
Requests/sec: 141728.97
Transfer/sec:     18.25MB
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
    Latency    18.84ms   23.10ms  77.98ms   79.83%
    Req/Sec     7.82k     3.19k   35.60k    88.00%
  311230 requests in 20.05s, 45.12MB read
Requests/sec:  15523.37
Transfer/sec:      2.25MB
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

### Go Fiber (Port 8008)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008
Running 20s test @ http://127.0.0.1:8008
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.90ms   24.28ms  82.57ms   79.43%
    Req/Sec    17.66k     6.87k   41.72k    64.25%
  704375 requests in 20.06s, 100.76MB read
Requests/sec:  35110.87
Transfer/sec:      5.02MB
```

### Java Spring Boot (Port 8009)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009
Running 20s test @ http://127.0.0.1:8009
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   139.90ms  240.67ms   1.94s    94.05%
    Req/Sec   700.27    406.50     2.65k    76.92%
  23631 requests in 20.06s, 2.21MB read
  Socket errors: connect 0, read 0, write 0, timeout 3
Requests/sec:   1178.04
Transfer/sec:    112.74KB
```

### Erlang Cowboy (Port 8010)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010
Running 20s test @ http://127.0.0.1:8010
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.40ms    0.94ms  43.73ms   93.65%
    Req/Sec    44.87k     3.27k   52.56k    80.50%
  1786173 requests in 20.01s, 257.25MB read
Requests/sec:  89270.28
Transfer/sec:     12.86MB
```

### Elixir Phoenix (Port 8007)

```
<!-- To be tested -->
```

## Notes

- All tests performed on the same hardware
- Tests run against the root `/` endpoint returning "Hello, World!"
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
