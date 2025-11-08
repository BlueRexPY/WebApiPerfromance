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
| Haskell Servant  | 8006 | 188,678.37 | 640.00us    | 6.18ms      | 3,778,052      | 34.37MB      |
| Bun API          | 8002 | 141,728.97 | 844.49us    | 5.48ms      | 2,836,940      | 18.25MB      |
| Deno API         | 8011 | 124,983.26 | 0.96ms      | 5.07ms      | 2,501,555      | 18.83MB      |
| Erlang Cowboy    | 8010 | 89,270.28  | 1.40ms      | 43.73ms     | 1,786,173      | 12.86MB      |
| Fastify API      | 8003 | 74,282.46  | 1.87ms      | 213.04ms    | 1,486,596      | 14.03MB      |
| .NET AOT         | 8013 | 69,817.66  | 5.45ms      | 65.75ms     | 1,399,595      | 12.38MB      |
| .NET API         | 8001 | 66,257.57  | 4.41ms      | 55.56ms     | 1,327,010      | 11.75MB      |
| Elixir Phoenix   | 8007 | 62,895.33  | 2.22ms      | 40.67ms     | 1,258,567      | 15.24MB      |
| Rust Actix       | 8005 | 43,239.68  | 12.11ms     | 65.61ms     | 865,679        | 5.57MB       |
| Go Fiber         | 8008 | 34,460.50  | 18.65ms     | 87.66ms     | 690,126        | 4.93MB       |
| Java Spring Boot | 8009 | 34,276.09  | 18.86ms     | 96.46ms     | 686,588        | 3.20MB       |
| Python FastAPI   | 8004 | 26,630.28  | 12.13ms     | 64.18ms     | 533,364        | 3.86MB       |
| Python Litestar  | 8000 | 15,523.37  | 18.84ms     | 77.98ms     | 311,230        | 2.25MB       |
| Swift Vapor      | 8012 | 4,689.72\* | 3.76ms      | 56.08ms     | 94,253         | 865.58KB     |

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

**Note**: Swift Vapor experienced 480 timeouts and all responses were non-2xx/3xx errors during the hello world test.

## Notes

- All tests performed on the same hardware
- Tests run against the root `/` endpoint returning "Hello, World!"
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
