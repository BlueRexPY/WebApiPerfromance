# JS Node NestJS Express Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:53:59 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8045/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,801.37 |
| Avg Latency | 3.388545ms |
| Max Latency | 62ms |
| Total Requests | 36,120 |
| Transfer/sec | N/A |
| Port | 8045 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.388545 | 6 | 62 |
| Iteration Duration | 66.53ms | 113.69ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 114.5MiB |
| Memory Limit | 1GiB |
| Memory % | 11.18% |
| CPU % | 0.01% |
| PIDs | 29 |

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


running (01.0s), 120/120 VUs, 1096 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2058 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3578 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 5522 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7017 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8787 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 10656 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 12920 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 15024 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 16841 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 18601 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 20212 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 22100 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 24108 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 25959 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 27812 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 29822 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 31888 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 33981 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 35971 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 64351  3209.303337/s
    checks_succeeded...: 87.74% 56462 out of 64351
    checks_failed......: 12.25% 7889 out of 64351

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  78% — ✓ 28231 / ✗ 7889

    EXECUTION
    iteration_duration.............: avg=66.53ms  min=11.51ms med=64.04ms max=282.21ms p(90)=97.17ms p(95)=113.69ms
    iterations.....................: 36120  1801.371176/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 7.8 MB 391 kB/s

    WEBSOCKET
    ws_connecting..................: avg=63.26ms  min=3ms     med=60.5ms  max=282.17ms p(90)=93.38ms p(95)=109.14ms
    ws_msgs_received...............: 28231  1407.932161/s
    ws_msgs_sent...................: 28231  1407.932161/s
    ws_orders_requests_sent........: 28231  1407.932161/s
    ws_orders_responses_received...: 28231  1407.932161/s
    ws_orders_rtt_ms...............: avg=3.388545 min=0       med=3       max=62       p(90)=5       p(95)=6       
    ws_session_duration............: avg=66.49ms  min=11.47ms med=64ms    max=282.17ms p(90)=97.13ms p(95)=113.66ms
    ws_sessions....................: 36120  1801.371176/s




running (20.1s), 000/120 VUs, 36120 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
