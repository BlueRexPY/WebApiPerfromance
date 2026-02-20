# Hello World Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/` (Hello World)

## Results Summary

| Framework        | Port | Req/sec    | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | ---------- | ----------- | ----------- | -------------- | ------------ | -------- |
| JS Bun           | 8002 | 139,902.76 | 0.95ms      | 74.63ms     | 2,798,451      | 18.01MB      | 60.37MiB |
| Haskell Servant  | 8006 | 115,297.04 | 1.11ms      | 106.67ms    | 2,306,053      | 21.00MB      | 213.8MiB |
| JS Deno          | 8011 | 85,530.71  | 1.46ms      | 73.17ms     | 1,710,746      | 12.89MB      | 34.98MiB |
| C# .NET AOT      | 8013 | 80,032.55  | 3.98ms      | 70.59ms     | 1,600,855      | 14.20MB      | 15.34MiB |
| F# .NET AOT      | 8020 | 70,274.78  | 5.07ms      | 74.13ms     | 1,406,681      | 12.47MB      | 15.45MiB |
| C# .NET API      | 8001 | 68,495.90  | 5.84ms      | 80.25ms     | 1,370,303      | 12.15MB      | 32.61MiB |
| F# .NET API      | 8019 | 68,313.43  | 5.66ms      | 81.19ms     | 1,367,428      | 12.12MB      | 39.94MiB |
| C Microhttpd     | 8018 | 59,634.69  | 12.47ms     | 70.84ms     | 1,194,125      | 7.68MB       | 11.93MiB |
| Erlang Cowboy    | 8010 | 56,637.99  | 2.23ms      | 94.27ms     | 1,132,835      | 8.16MB       | 96.49MiB |
| Rust Actix       | 8005 | 53,865.99  | 11.64ms     | 66.69ms     | 1,077,485      | 6.94MB       | 7.629MiB |
| C++ Drogon       | 8017 | 52,921.37  | 13.04ms     | 70.24ms     | 1,058,558      | 8.68MB       | 10.98MiB |
| Elixir Phoenix   | 8007 | 39,730.31  | 3.33ms      | 59.24ms     | 794,640        | 9.62MB       | 162.5MiB |
| Java Quarkus     | 8021 | 36,468.24  | 10.92ms     | 121.21ms    | 729,580        | 3.90MB       | 160.3MiB |
| Go Fiber         | 8008 | 35,962.46  | 18.89ms     | 155.80ms    | 721,358        | 5.14MB       | 21.54MiB |
| JS Fastify       | 8003 | 32,725.09  | 10.49ms     | 1.04s       | 654,643        | 6.18MB       | 27.62MiB |
| Java Spring Boot | 8009 | 31,265.68  | 13.21ms     | 170.99ms    | 625,607        | 2.92MB       | 144.2MiB |
| JS Express       | 8014 | 25,475.41  | 5.52ms      | 398.78ms    | 509,579        | 4.79MB       | 38.84MiB |
| Swift Vapor      | 8012 | 24,274.85  | 4.99ms      | 60.93ms     | 485,537        | 4.03MB       | 4.625MiB |
| Python FastAPI   | 8004 | 20,748.27  | 12.73ms     | 61.11ms     | 414,988        | 3.01MB       | 192.3MiB |
| Python Litestar  | 8000 | 13,671.14  | 19.49ms     | 77.36ms     | 274,003        | 1.98MB       | 147.9MiB |
| Ruby Rails       | 8015 | 3,103.00   | 44.47ms     | 1.16s       | 62,156         | 869.69KB     | 296.5MiB |
| Python Django    | 8016 | 1,417.66\* | 164.76ms    | 1.61s       | 28,376         | 418.07KB     | 421.4MiB |

**Note**: \* = Non-2xx or 3xx responses occurred during the test

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
    Latency     4.41ms    8.31ms  55.56ms   89.91%
    Req/Sec    33.33k    15.41k   95.22k    88.00%
  1327010 requests in 20.03s, 235.39MB read
Requests/sec:  66257.57
Transfer/sec:     11.75MB
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
    Latency   640.00us  376.72us   6.18ms   80.75%
    Req/Sec    94.97k    13.37k  121.51k    68.25%
  3778052 requests in 20.02s, 688.18MB read
Requests/sec: 188678.37
Transfer/sec:     34.37MB
```

### Go Fiber (Port 8008)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008
Running 20s test @ http://127.0.0.1:8008
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.65ms   25.07ms  87.66ms   79.24%
    Req/Sec    17.32k     5.51k   44.18k    68.25%
  690126 requests in 20.03s, 98.72MB read
Requests/sec:  34460.50
Transfer/sec:      4.93MB
```

### Java Spring Boot (Port 8009)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009
Running 20s test @ http://127.0.0.1:8009
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.86ms   25.22ms  96.46ms   79.35%
    Req/Sec    17.23k     8.00k   32.14k    54.75%
  686588 requests in 20.03s, 64.17MB read
Requests/sec:  34276.09
Transfer/sec:      3.20MB
```

### Elixir Phoenix (Port 8007)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007
Running 20s test @ http://127.0.0.1:8007
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.22ms    1.92ms  40.67ms   91.98%
    Req/Sec    31.62k     1.37k   34.86k    74.50%
  1258567 requests in 20.01s, 304.89MB read
Requests/sec:  62895.33
Transfer/sec:     15.24MB
```

### Express API (Port 8014)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014
Running 20s test @ http://127.0.0.1:8014
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.60ms    5.46ms 284.85ms   99.55%
    Req/Sec    13.79k     1.10k   15.03k    94.50%
  548649 requests in 20.02s, 103.08MB read
Requests/sec:  27406.81
Transfer/sec:      5.15MB
```

### Deno API (Port 8011)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011
Running 20s test @ http://127.0.0.1:8011
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.96ms  210.26us   5.07ms   92.12%
    Req/Sec    62.85k     9.15k   71.47k    87.25%
  2501555 requests in 20.02s, 376.94MB read
Requests/sec: 124983.26
Transfer/sec:     18.83MB
```

### Swift Vapor (Port 8012)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/
Running 20s test @ http://127.0.0.1:8012/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.76ms    1.66ms  56.08ms   94.08%
    Req/Sec    12.89k     5.96k   18.58k    85.29%
  94253 requests in 20.10s, 16.99MB read
  Socket errors: connect 0, read 0, write 0, timeout 480
  Non-2xx or 3xx responses: 94253
Requests/sec:   4689.72
Transfer/sec:    865.58KB
```

### Ruby Rails (Port 8015)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/
Running 20s test @ http://127.0.0.1:8015/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    44.86ms   30.63ms 157.11ms   53.57%
    Req/Sec     1.36k   569.25     3.40k    71.75%
  53991 requests in 20.02s, 14.78MB read
Requests/sec:   2696.53
Transfer/sec:    755.77KB
```

### Django API (Port 8016)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/
Running 20s test @ http://127.0.0.1:8016/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    65.49ms   42.99ms 514.20ms   79.07%
    Req/Sec     0.97k   410.63     2.59k    79.38%
  38131 requests in 20.03s, 10.98MB read
  Socket errors: connect 0, read 796, write 0, timeout 0
Requests/sec:   1904.07
Transfer/sec:    561.31KB
```

**Note**: Django API experienced 796 socket read errors during the hello world test.

## Notes

- All tests performed on the same hardware
- Tests run against the root `/` endpoint returning "Hello, World!"
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
