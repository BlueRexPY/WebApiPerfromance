# Orders Endpoint Performance Test Results

**Test Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:80XX/orders`

**Test Configuration**:

- Threads: 2
- Connections: 120
- Duration: 20 seconds
- Endpoint: `/orders` (Database query returning 100 orders)

## Results Summary

| Framework       | Port | Req/sec  | Avg Latency | Max Latency | Total Requests | Transfer/sec |
| --------------- | ---- | -------- | ----------- | ----------- | -------------- | ------------ |
| Python Litestar | 8000 | 3,845.36 | 34.37ms     | 167.43ms    | 77,053         | 41.83MB      |

## Detailed Results

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

## Notes

- All tests performed on the same hardware
- Tests run against the `/orders` endpoint returning 100 database records
- Services running in Docker containers with 2.0 CPU limit and 1G memory limit
- Database: PostgreSQL 15-alpine with connection pooling
- Query: `SELECT * FROM orders OFFSET 1000 LIMIT 100`
