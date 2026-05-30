# JS Node NestJS Fastify — WS Orders Benchmark

**Tested**: 2026-05-30 22:43:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8030/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 492.27 |
| Avg Latency | 38.762891ms |
| Max Latency | 248ms |
| Total Requests | 9,949 |
| Transfer/sec | N/A |
| Port | 8030 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 38.762891 | 129 | 248 |
| Iteration Duration | 242.29ms | 333.98ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 45.66MiB |
| Memory Limit | 1GiB |
| Memory % | 4.46% |
| CPU % | 0.01% |
| PIDs | 11 |

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


running (00.9s), 120/120 VUs, 254 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  00.9s/20s

running (01.9s), 120/120 VUs, 641 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  01.9s/20s

running (02.9s), 120/120 VUs, 1080 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  02.9s/20s

running (03.9s), 120/120 VUs, 1544 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  03.9s/20s

running (04.9s), 120/120 VUs, 2045 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  04.9s/20s

running (05.9s), 120/120 VUs, 2554 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  05.9s/20s

running (06.9s), 120/120 VUs, 3023 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  06.9s/20s

running (08.0s), 120/120 VUs, 3507 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (08.9s), 120/120 VUs, 3972 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  08.9s/20s

running (09.9s), 120/120 VUs, 4589 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  09.9s/20s

running (10.9s), 120/120 VUs, 5110 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  10.9s/20s

running (11.9s), 120/120 VUs, 5612 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  11.9s/20s

running (12.9s), 120/120 VUs, 6105 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  12.9s/20s

running (13.9s), 120/120 VUs, 6614 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  13.9s/20s

running (15.0s), 120/120 VUs, 7150 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (15.9s), 120/120 VUs, 7719 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  15.9s/20s

running (16.9s), 120/120 VUs, 8255 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  16.9s/20s

running (17.9s), 120/120 VUs, 8761 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  17.9s/20s

running (18.9s), 120/120 VUs, 9287 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  18.9s/20s

running (19.9s), 120/120 VUs, 9797 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  19.9s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=129


  █ TOTAL RESULTS 

    checks_total.......: 19898   984.530738/s
    checks_succeeded...: 100.00% 19898 out of 19898
    checks_failed......: 0.00%   0 out of 19898

    ✓ received 100 orders
    ✓ ws connected (101)

    EXECUTION
    iteration_duration.............: avg=242.29ms  min=33.51ms med=238.99ms max=588.97ms p(90)=304.07ms p(95)=333.98ms
    iterations.....................: 9949   492.265369/s
    vus............................: 120    min=120      max=120
    vus_max........................: 120    min=120      max=120

    NETWORK
    data_received..................: 112 MB 5.5 MB/s
    data_sent......................: 2.2 MB 110 kB/s

    WEBSOCKET
    ws_connecting..................: avg=200.36ms  min=5.69ms  med=208.72ms max=547.16ms p(90)=257.02ms p(95)=279.13ms
    ws_msgs_received...............: 9949   492.265369/s
    ws_msgs_sent...................: 9949   492.265369/s
    ws_orders_requests_sent........: 9949   492.265369/s
    ws_orders_responses_received...: 9949   492.265369/s
    ws_orders_rtt_ms...............: avg=38.762891 min=2       med=24       max=248      p(90)=100      p(95)=129     
    ws_session_duration............: avg=242.12ms  min=33.46ms med=238.85ms max=588.88ms p(90)=303.92ms p(95)=333.77ms
    ws_sessions....................: 9949   492.265369/s




running (20.2s), 000/120 VUs, 9949 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
