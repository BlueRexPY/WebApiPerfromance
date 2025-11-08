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
| .NET AOT        | 8013 | 8,584.76  | 19.03ms     | 89.77ms     | 171,890        | 91.20MB      |
| .NET API        | 8001 | 7,539.63  | 22.76ms     | 170.07ms    | 151,035        | 80.10MB      |
| Python Litestar | 8000 | 3,845.36  | 34.37ms     | 167.43ms    | 77,053         | 41.83MB      |

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

## Notes

- All tests performed on the same hardware
- Tests run against the `/orders` endpoint returning 100 database records
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
- Database: PostgreSQL 15-alpine with connection pooling
- Query: `SELECT * FROM orders OFFSET 1000 LIMIT 100`
