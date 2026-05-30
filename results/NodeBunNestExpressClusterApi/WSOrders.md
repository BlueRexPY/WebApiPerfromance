# JS Bun NestJS Express Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:18:35 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8059/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,306.40 |
| Avg Latency | 31.109522ms |
| Max Latency | 192ms |
| Total Requests | 46,253 |
| Transfer/sec | N/A |
| Port | 8059 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 31.109522 | 77 | 192 |
| Iteration Duration | 51.95ms | 112.22ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 145.7MiB |
| Memory Limit | 1GiB |
| Memory % | 14.23% |
| CPU % | 0.73% |
| PIDs | 50 |

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


running (01.0s), 120/120 VUs, 1680 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4043 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6924 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8982 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11712 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14753 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 17657 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 20153 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 22256 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 24722 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 27132 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 29758 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32008 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34117 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 36165 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 38185 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 40072 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 42104 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 44127 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 46118 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=77


  █ TOTAL RESULTS 

    checks_total.......: 74494  3714.631316/s
    checks_succeeded...: 75.82% 56482 out of 74494
    checks_failed......: 24.17% 18012 out of 74494

    ✗ ws connected (101)
      ↳  61% — ✓ 28241 / ✗ 18012
    ✓ received 100 orders

    EXECUTION
    iteration_duration.............: avg=51.95ms   min=1.46ms  med=46.75ms max=367.29ms p(90)=95.59ms p(95)=112.22ms
    iterations.....................: 46253  2306.398398/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 9.8 MB 488 kB/s

    WEBSOCKET
    ws_connecting..................: avg=32.37ms   min=172.8µs med=19.03ms max=319.49ms p(90)=78.7ms  p(95)=101.12ms
    ws_msgs_received...............: 28241  1408.232918/s
    ws_msgs_sent...................: 28241  1408.232918/s
    ws_orders_requests_sent........: 28241  1408.232918/s
    ws_orders_responses_received...: 28241  1408.232918/s
    ws_orders_rtt_ms...............: avg=31.109522 min=0       med=26      max=192      p(90)=67      p(95)=77      
    ws_session_duration............: avg=51.9ms    min=1.44ms  med=46.69ms max=367.27ms p(90)=95.54ms p(95)=112.17ms
    ws_sessions....................: 46253  2306.398398/s




running (20.1s), 000/120 VUs, 46253 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
