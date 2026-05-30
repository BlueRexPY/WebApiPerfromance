# JS Node NestJS Fastify Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:56:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8046/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,915.85 |
| Avg Latency | 3.175166ms |
| Max Latency | 73ms |
| Total Requests | 38,400 |
| Transfer/sec | N/A |
| Port | 8046 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.175166 | 6 | 73 |
| Iteration Duration | 62.55ms | 104.06ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 121MiB |
| Memory Limit | 1GiB |
| Memory % | 11.82% |
| CPU % | 0.00% |
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


running (01.0s), 120/120 VUs, 2017 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4015 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5669 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7278 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 8942 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 11037 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 12788 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 14573 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 16263 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 18447 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 20093 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 22320 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 24117 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 26172 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 28193 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 30092 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 32080 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 34082 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 36190 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 38266 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 66636  3324.592821/s
    checks_succeeded...: 84.74% 56472 out of 66636
    checks_failed......: 15.25% 10164 out of 66636

    ✗ ws connected (101)
      ↳  73% — ✓ 28236 / ✗ 10164
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=62.55ms  min=8.43ms med=60.41ms max=231.83ms p(90)=88.62ms p(95)=104.06ms
    iterations.....................: 38400  1915.846754/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 8.3 MB 413 kB/s

    WEBSOCKET
    ws_connecting..................: avg=59.63ms  min=6.99ms med=57.13ms max=228.43ms p(90)=85.3ms  p(95)=100.6ms 
    ws_msgs_received...............: 28236  1408.746067/s
    ws_msgs_sent...................: 28236  1408.746067/s
    ws_orders_requests_sent........: 28236  1408.746067/s
    ws_orders_responses_received...: 28236  1408.746067/s
    ws_orders_rtt_ms...............: avg=3.175166 min=0      med=2       max=73       p(90)=4       p(95)=6       
    ws_session_duration............: avg=62.51ms  min=8.39ms med=60.37ms max=231.81ms p(90)=88.55ms p(95)=104ms   
    ws_sessions....................: 38400  1915.846754/s




running (20.0s), 000/120 VUs, 38400 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
