# Orders Endpoint Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Database query returning 100 orders)

## Results Summary

| Framework        | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory   |
| ---------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ | -------- |
| Bun API          | 8002 | 13,926.52 | 8.61ms      | 25.04ms     | 278,570        | 148.62MB     | 22.21MiB |
| .NET API         | 8001 | 10,455.90 | 18.60ms     | 91.05ms     | 209,504        | 111.08MB     | 59.81MiB |
| .NET AOT         | 8013 | 10,335.60 | 17.99ms     | 93.31ms     | 207,045        | 109.80MB     | 34.1MiB  |
| Rust Actix       | 8005 | 9,376.94  | 25.56ms     | 287.83ms    | 187,772        | 101.86MB     | 15.56MiB |
| Go Fiber         | 8008 | 8,051.70  | 28.15ms     | 516.70ms    | 161,447        | 88.24MB      | 60.96MiB |
| C Microhttpd     | 8018 | 5,598.50  | 25.25ms     | 137.41ms    | 112,180        | 60.74MB      | 4.691MiB |
| Elixir Phoenix   | 8007 | 3,411.77  | 35.18ms     | 110.29ms    | 68,284         | 37.45MB      | 187.7MiB |
| Python Litestar  | 8000 | 3,275.96  | 38.73ms     | 180.56ms    | 65,554         | 35.64MB      | 159.9MiB |
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

**Note**: \* = Non-2xx or 3xx responses occurred during the test

## Detailed Results

### .NET API (Port 8001)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.14ms   22.50ms 138.57ms   80.18%
    Req/Sec     5.04k     2.01k    9.61k    60.80%
  200258 requests in 20.03s, 2.08GB read
Requests/sec:   9996.09
Transfer/sec:    106.20MB
```

### Python Litestar (Port 8000)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.37ms   27.46ms 167.43ms   72.39%
    Req/Sec     1.93k   408.62     3.08k    78.25%
  77053 requests in 20.04s, 838.23MB read
Requests/sec:   3845.36
Transfer/sec:     41.83MB
```

### Bun API (Port 8002)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.43ms    0.94ms  41.88ms   99.00%
    Req/Sec     8.14k   280.43     8.56k    92.50%
  323896 requests in 20.01s, 3.38GB read
Requests/sec:  16183.56
Transfer/sec:    172.70MB
```

### .NET AOT (Port 8013)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.38ms   18.06ms  85.86ms   80.84%
    Req/Sec     5.08k     1.52k   12.22k    72.75%
  202291 requests in 20.01s, 2.10GB read
Requests/sec:  10107.29
Transfer/sec:    107.38MB
```

### Python FastAPI (Port 8004)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.50ms   26.20ms  97.78ms   60.48%
    Req/Sec     1.72k   162.18     2.35k    78.75%
  68272 requests in 20.02s, 742.70MB read
Requests/sec:   3410.61
Transfer/sec:     37.10MB
```

### Fastify API (Port 8003)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.37ms   32.15ms 784.57ms   98.91%
    Req/Sec     1.62k   145.51     2.26k    91.25%
  64331 requests in 20.02s, 690.38MB read
Requests/sec:   3213.03
Transfer/sec:     34.48MB
```

### Erlang Cowboy (Port 8010)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/orders
Running 20s test @ http://127.0.0.1:8010/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.03ms    2.79ms  95.43ms   80.93%
    Req/Sec     1.54k    80.81     1.70k    70.50%
  61445 requests in 20.03s, 627.36MB read
Requests/sec:   3067.72
Transfer/sec:     31.32MB
```

### Express API (Port 8014)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    45.47ms   18.04ms 325.87ms   77.16%
    Req/Sec     1.34k   145.30     1.52k    93.25%
  53375 requests in 20.03s, 572.75MB read
Requests/sec:   2665.05
Transfer/sec:     28.60MB
```

### Rust Actix (Port 8005)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.94ms   29.68ms 264.48ms   77.29%
    Req/Sec     6.06k     0.90k    9.75k    85.00%
  241769 requests in 20.08s, 2.52GB read
Requests/sec:  12040.43
Transfer/sec:    128.28MB
```

### Haskell Servant (Port 8006)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/orders
Running 20s test @ http://127.0.0.1:8006/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   136.67ms  115.58ms   1.76s    78.81%
    Req/Sec   465.54     56.27     0.89k    75.75%
  18554 requests in 20.04s, 202.25MB read
Requests/sec:    925.92
Transfer/sec:     10.09MB
```

### Elixir Phoenix (Port 8007)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/orders
Running 20s test @ http://127.0.0.1:8007/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.32ms    1.25ms  36.76ms   77.53%
    Req/Sec     2.48k    75.37     2.70k    80.00%
  98627 requests in 20.03s, 1.06GB read
Requests/sec:   4924.60
Transfer/sec:     54.05MB
```

### Go Fiber (Port 8008)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    31.41ms   33.17ms 199.51ms   76.83%
    Req/Sec     2.91k     1.09k    6.67k    70.75%
  115959 requests in 20.02s, 1.24GB read
Requests/sec:   5792.74
Transfer/sec:     63.49MB
```

### Java Spring Boot (Port 8009)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   120.47ms   42.93ms 248.20ms   63.38%
    Req/Sec   499.65    214.27     1.20k    70.68%
  19889 requests in 20.04s, 228.72MB read
Requests/sec:    992.71
Transfer/sec:     11.42MB
```

### Deno API (Port 8011)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/orders
Running 20s test @ http://127.0.0.1:8011/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    74.04ms    5.53ms 115.41ms   87.76%
    Req/Sec   812.31     69.09     0.98k    69.75%
  32364 requests in 20.04s, 346.09MB read
Requests/sec:   1614.91
Transfer/sec:     17.27MB
```

### Swift Vapor (Port 8012)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/orders
Running 20s test @ http://127.0.0.1:8012/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   222.61ms  257.87ms   2.00s    88.44%
    Req/Sec   366.60    184.03     1.02k    68.54%
  14506 requests in 20.07s, 148.75MB read
  Socket errors: connect 0, read 0, write 0, timeout 7
  Non-2xx or 3xx responses: 105
Requests/sec:    722.94
Transfer/sec:      7.41MB
```

### Ruby Rails (Port 8015)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/orders
Running 20s test @ http://127.0.0.1:8015/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   219.04ms   98.69ms 674.98ms   71.04%
    Req/Sec   276.41    109.19   590.00     66.75%
  11018 requests in 20.03s, 107.10MB read
  Non-2xx or 3xx responses: 1126
Requests/sec:    550.01
Transfer/sec:      5.35MB
```

**Note**: Ruby Rails experienced 1,126 non-2xx/3xx error responses during the orders endpoint test.

### Django API (Port 8016)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/orders
Running 20s test @ http://127.0.0.1:8016/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   124.66ms   48.71ms 386.37ms   78.38%
    Req/Sec   489.51    185.55     1.20k    80.65%
  19443 requests in 20.03s, 214.29MB read
  Socket errors: connect 0, read 75, write 0, timeout 0
Requests/sec:    970.55
Transfer/sec:     10.70MB
```

**Note**: Django API experienced 75 socket read errors during the orders endpoint test.

## Notes

- All tests performed on the same hardware
- Tests run against the `/orders` endpoint returning 100 database records
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
- Database: PostgreSQL 15-alpine with connection pooling
- Query: `SELECT * FROM orders OFFSET 1000 LIMIT 100`
