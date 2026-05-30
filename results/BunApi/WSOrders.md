# JS Bun — WS Orders Benchmark

**Tested**: 2026-05-30 21:25:36 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8002/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,697.11 |
| Avg Latency | 7.786266ms |
| Max Latency | 44ms |
| Total Requests | 54,057 |
| Transfer/sec | N/A |
| Port | 8002 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 7.786266 | 17 | 44 |
| Iteration Duration | 44.42ms | 112.1ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 23.1MiB |
| Memory Limit | 1GiB |
| Memory % | 2.26% |
| CPU % | 0.20% |
| PIDs | 16 |

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


running (01.0s), 120/120 VUs, 5148 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 10756 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 15199 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 18087 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 20886 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 24388 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 28365 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 30557 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 32590 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 34168 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 36094 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 38146 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 39836 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 41828 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 43743 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 45930 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47742 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 49615 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 51745 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 53921 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=17


  █ TOTAL RESULTS 

    checks_total.......: 82293  4105.905864/s
    checks_succeeded...: 68.62% 56472 out of 82293
    checks_failed......: 31.37% 25821 out of 82293

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  52% — ✓ 28236 / ✗ 25821

    EXECUTION
    iteration_duration.............: avg=44.42ms  min=6.09ms med=34.14ms max=400.77ms p(90)=88.16ms p(95)=112.1ms 
    iterations.....................: 54057  2697.106112/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 11 MB  563 kB/s

    WEBSOCKET
    ws_connecting..................: avg=39.62ms  min=599µs  med=26.63ms max=400.66ms p(90)=87.81ms p(95)=111.98ms
    ws_msgs_received...............: 28236  1408.799752/s
    ws_msgs_sent...................: 28236  1408.799752/s
    ws_orders_requests_sent........: 28236  1408.799752/s
    ws_orders_responses_received...: 28236  1408.799752/s
    ws_orders_rtt_ms...............: avg=7.786266 min=0      med=7       max=44       p(90)=14      p(95)=17      
    ws_session_duration............: avg=44.35ms  min=6.06ms med=34.07ms max=400.69ms p(90)=88.01ms p(95)=112.04ms
    ws_sessions....................: 54057  2697.106112/s




running (20.0s), 000/120 VUs, 54057 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
