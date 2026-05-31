# Go net/http — WS Orders Benchmark

**Tested**: 2026-05-31 16:18:48 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8032/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,507.32 |
| Avg Latency | 11.254698ms |
| Max Latency | 99ms |
| Total Requests | 50,244 |
| Transfer/sec | N/A |
| Port | 8032 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 11.254698 | 61 | 99 |
| Iteration Duration | 47.79ms | 110.04ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 37.67MiB |
| Memory Limit | 512MiB |
| Memory % | 7.36% |
| CPU % | 0.00% |
| PIDs | 44 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/ws/orders.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 3341 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7569 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 11511 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 13862 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 16830 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 19889 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 22048 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 23978 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 26040 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 28769 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 31100 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 33042 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 35261 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 37458 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 39103 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 41358 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 43382 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 45597 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 47828 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 50090 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=61


  █ TOTAL RESULTS 

    checks_total.......: 73126  3649.196276/s
    checks_succeeded...: 62.58% 45764 out of 73126
    checks_failed......: 37.41% 27362 out of 73126

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  45% — ✓ 22882 / ✗ 27362

    EXECUTION
    iteration_duration.............: avg=47.79ms   min=1.4ms    med=40.69ms max=291.87ms p(90)=92.07ms p(95)=110.04ms
    iterations.....................: 50244  2507.319116/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 263 MB 13 MB/s
    data_sent......................: 10 MB  518 kB/s

    WEBSOCKET
    ws_connecting..................: avg=40.66ms   min=205.78µs med=33.29ms max=291.82ms p(90)=85.88ms p(95)=108.37ms
    ws_msgs_received...............: 22882  1141.87716/s
    ws_msgs_sent...................: 22882  1141.87716/s
    ws_orders_requests_sent........: 22882  1141.87716/s
    ws_orders_responses_received...: 22882  1141.87716/s
    ws_orders_rtt_ms...............: avg=11.254698 min=0        med=5       max=99       p(90)=31      p(95)=61      
    ws_session_duration............: avg=47.68ms   min=1.38ms   med=40.63ms max=291.84ms p(90)=91.9ms  p(95)=109.92ms
    ws_sessions....................: 50244  2507.319116/s




running (20.0s), 000/120 VUs, 50244 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
