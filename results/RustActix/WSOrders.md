# Rust Actix — WS Orders Benchmark

**Tested**: 2026-05-30 20:39:57 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8005/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,992.05 |
| Avg Latency | 9.990471ms |
| Max Latency | 445ms |
| Total Requests | 59,959 |
| Transfer/sec | N/A |
| Port | 8005 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.990471 | 22 | 445 |
| Iteration Duration | 40.04ms | 107.91ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 11.31MiB |
| Memory Limit | 1GiB |
| Memory % | 1.10% |
| CPU % | 0.03% |
| PIDs | 4 |

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


running (01.0s), 120/120 VUs, 3888 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 11810 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18127 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 23505 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 28664 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30952 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 33035 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34990 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36902 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 38943 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41007 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 43120 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 45090 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 47128 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 49246 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51341 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53456 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55574 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 57711 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 59824 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=22


  █ TOTAL RESULTS 

    checks_total.......: 89028  4442.64535/s
    checks_succeeded...: 65.30% 58138 out of 89028
    checks_failed......: 34.69% 30890 out of 89028

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  48% — ✓ 29069 / ✗ 30890

    EXECUTION
    iteration_duration.............: avg=40.04ms  min=912.91µs med=26.34ms max=516.91ms p(90)=86.54ms p(95)=107.91ms
    iterations.....................: 59959  2992.053877/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 333 MB 17 MB/s
    data_sent......................: 12 MB  621 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.79ms  min=147.21µs med=18.87ms max=322.54ms p(90)=85.06ms p(95)=106.08ms
    ws_msgs_received...............: 29069  1450.591473/s
    ws_msgs_sent...................: 29069  1450.591473/s
    ws_orders_requests_sent........: 29069  1450.591473/s
    ws_orders_responses_received...: 29069  1450.591473/s
    ws_orders_rtt_ms...............: avg=9.990471 min=0        med=7       max=445      p(90)=15      p(95)=22      
    ws_session_duration............: avg=39.95ms  min=899.93µs med=26.23ms max=516.72ms p(90)=86.41ms p(95)=107.82ms
    ws_sessions....................: 59959  2992.053877/s




running (20.0s), 000/120 VUs, 59959 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
