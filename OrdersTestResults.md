# Orders Endpoint Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Database query returning 100 orders)

## Results Summary

| Framework        | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec |
| ---------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ |
| Bun API          | 8002 | 16,183.56 | 7.43ms      | 41.88ms     | 323,896        | 172.70MB     |
| Rust Actix       | 8005 | 12,040.43 | 24.94ms     | 264.48ms    | 241,769        | 128.28MB     |
| .NET AOT         | 8013 | 10,107.29 | 17.38ms     | 85.86ms     | 202,291        | 107.38MB     |
| .NET API         | 8001 | 9,996.09  | 20.14ms     | 138.57ms    | 200,258        | 106.20MB     |
| Go Fiber         | 8008 | 5,792.74  | 31.41ms     | 199.51ms    | 115,959        | 63.49MB      |
| Elixir Phoenix   | 8007 | 4,924.60  | 24.32ms     | 36.76ms     | 98,627         | 54.05MB      |
| Python Litestar  | 8000 | 3,845.36  | 34.37ms     | 167.43ms    | 77,053         | 41.83MB      |
| Python FastAPI   | 8004 | 3,410.61  | 36.50ms     | 97.78ms     | 68,272         | 37.10MB      |
| Fastify API      | 8003 | 3,213.03  | 39.37ms     | 784.57ms    | 64,331         | 34.48MB      |
| Java Spring Boot | 8009 | 992.71    | 120.47ms    | 248.20ms    | 19,889         | 11.42MB      |
| Haskell Servant  | 8006 | 925.92    | 136.67ms    | 1.76s       | 18,554         | 10.09MB      |

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

## Notes

- All tests performed on the same hardware
- Tests run against the `/orders` endpoint returning 100 database records
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
- Database: PostgreSQL 15-alpine with connection pooling
- Query: `SELECT * FROM orders OFFSET 1000 LIMIT 100`
