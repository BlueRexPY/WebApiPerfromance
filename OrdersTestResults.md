# Orders Endpoint Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Database query returning 100 orders)

## Results Summary

| Framework       | Port | Req/sec   | Avg Latency | Max Latency | Total Requests | Transfer/sec |
| --------------- | ---- | --------- | ----------- | ----------- | -------------- | ------------ |
| Bun API         | 8002 | 16,183.56 | 7.43ms      | 41.88ms     | 323,896        | 172.70MB     |
| Rust Actix      | 8005 | 12,040.43 | 24.94ms     | 264.48ms    | 241,769        | 128.28MB     |
| .NET AOT        | 8013 | 8,584.76  | 19.03ms     | 89.77ms     | 171,890        | 91.20MB      |
| .NET API        | 8001 | 7,539.63  | 22.76ms     | 170.07ms    | 151,035        | 80.10MB      |
| Python Litestar | 8000 | 3,845.36  | 34.37ms     | 167.43ms    | 77,053         | 41.83MB      |
| Python FastAPI  | 8004 | 3,410.61  | 36.50ms     | 97.78ms     | 68,272         | 37.10MB      |
| Fastify API     | 8003 | 3,213.03  | 39.37ms     | 784.57ms    | 64,331         | 34.48MB      |

## Detailed Results

### .NET API (Port 8001)

```
wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.76ms   23.61ms 170.07ms   80.53%
    Req/Sec     3.81k     1.39k   10.51k    81.91%
  151035 requests in 20.03s, 1.57GB read
Requests/sec:   7539.63
Transfer/sec:     80.10MB
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
    Latency    19.03ms   18.71ms  89.77ms   80.18%
    Req/Sec     4.32k     1.29k   10.10k    73.75%
  171890 requests in 20.02s, 1.78GB read
Requests/sec:   8584.76
Transfer/sec:     91.20MB
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

## Notes

- All tests performed on the same hardware
- Tests run against the `/orders` endpoint returning 100 database records
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
- Database: PostgreSQL 15-alpine with connection pooling
- Query: `SELECT * FROM orders OFFSET 1000 LIMIT 100`
