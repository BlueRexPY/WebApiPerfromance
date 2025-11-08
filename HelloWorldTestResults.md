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
| Fastify API      | 8003 | 74,282.46  | 1.87ms      | 213.04ms    | 1,486,596      | 14.03MB      |
| .NET AOT         | 8013 | 73,548.20  | 3.79ms      | 58.79ms     | 1,472,209      | 13.05MB      |
| .NET API         | 8001 | 62,185.33  | 4.52ms      | 69.04ms     | 1,245,119      | 11.03MB      |
| Rust Actix       | 8005 | 43,239.68  | 12.11ms     | 65.61ms     | 865,679        | 5.57MB       |
| Go Fiber         | 8008 | 35,110.87  | 17.90ms     | 82.57ms     | 704,375        | 5.02MB       |
| Haskell Servant  | 8006 | 32,973.21  | 19.19ms     | 83.70ms     | 661,412        | 6.01MB       |
| Python FastAPI   | 8004 | 26,630.28  | 12.13ms     | 64.18ms     | 533,364        | 3.86MB       |
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
    Latency     1.87ms    4.97ms 213.04ms   99.55%
    Req/Sec    37.35k     3.73k   41.72k    90.00%
  1486596 requests in 20.01s, 280.71MB read
Requests/sec:  74282.46
Transfer/sec:     14.03MB
```

### Rust Actix (Port 8005)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.11ms   17.85ms  65.61ms   80.68%
    Req/Sec    21.74k     6.36k   79.11k    97.25%
  865679 requests in 20.02s, 111.45MB read
Requests/sec:  43239.68
Transfer/sec:      5.57MB
```

### Python FastAPI (Port 8004)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004
Running 20s test @ http://127.0.0.1:8004
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.13ms   16.28ms  64.18ms   81.01%
    Req/Sec    13.39k     2.15k   18.47k    72.00%
  533364 requests in 20.03s, 77.32MB read
Requests/sec:  26630.28
Transfer/sec:      3.86MB
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
