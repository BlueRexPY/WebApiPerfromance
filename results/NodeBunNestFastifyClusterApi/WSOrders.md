# JS Bun NestJS Fastify Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:20:46 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8060/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,223.30 |
| Avg Latency | 33.888728ms |
| Max Latency | 132ms |
| Total Requests | 44,564 |
| Transfer/sec | N/A |
| Port | 8060 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 33.888728 | 83 | 132 |
| Iteration Duration | 53.9ms | 116.48ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 142.1MiB |
| Memory Limit | 1GiB |
| Memory % | 13.87% |
| CPU % | 1.42% |
| PIDs | 45 |

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


running (01.0s), 120/120 VUs, 2222 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4980 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7909 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10087 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12011 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14420 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16901 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 19289 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 21668 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 24230 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 26842 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 29169 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 30983 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 32946 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 34882 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 36850 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38788 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40718 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42575 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44437 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=83


  █ TOTAL RESULTS 

    checks_total.......: 72810  3632.48918/s
    checks_succeeded...: 77.58% 56492 out of 72810
    checks_failed......: 22.41% 16318 out of 72810

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  63% — ✓ 28246 / ✗ 16318

    EXECUTION
    iteration_duration.............: avg=53.9ms    min=1.34ms   med=51.49ms max=311.28ms p(90)=100.22ms p(95)=116.48ms
    iterations.....................: 44564  2223.296907/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.5 MB 472 kB/s

    WEBSOCKET
    ws_connecting..................: avg=31.82ms   min=173.28µs med=18.13ms max=311.19ms p(90)=80.61ms  p(95)=104.73ms
    ws_msgs_received...............: 28246  1409.192273/s
    ws_msgs_sent...................: 28246  1409.192273/s
    ws_orders_requests_sent........: 28246  1409.192273/s
    ws_orders_responses_received...: 28246  1409.192273/s
    ws_orders_rtt_ms...............: avg=33.888728 min=0        med=27      max=132      p(90)=74       p(95)=83      
    ws_session_duration............: avg=53.85ms   min=1.32ms   med=51.44ms max=311.21ms p(90)=100.17ms p(95)=116.41ms
    ws_sessions....................: 44564  2223.296907/s




running (20.0s), 000/120 VUs, 44564 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
