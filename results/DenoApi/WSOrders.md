# JS Deno — WS Orders Benchmark

**Tested**: 2026-05-30 22:14:35 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8011/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,652.45 |
| Avg Latency | 38.274367ms |
| Max Latency | 379ms |
| Total Requests | 33,118 |
| Transfer/sec | N/A |
| Port | 8011 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 38.274367 | 53 | 379 |
| Iteration Duration | 72.53ms | 98.88ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 144.7MiB |
| Memory Limit | 1GiB |
| Memory % | 14.13% |
| CPU % | 0.00% |
| PIDs | 18 |

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


running (01.0s), 120/120 VUs, 1085 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2833 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4684 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 6499 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 8193 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9931 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11727 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 13566 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 15087 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 16549 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 18004 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 19461 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 21007 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 22566 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 24048 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 25575 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 27021 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 28768 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 30860 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 32978 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=53


  █ TOTAL RESULTS 

    checks_total.......: 61230  3055.116341/s
    checks_succeeded...: 91.82% 56224 out of 61230
    checks_failed......: 8.17%  5006 out of 61230

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  84% — ✓ 28112 / ✗ 5006

    EXECUTION
    iteration_duration.............: avg=72.53ms   min=8.17ms med=72.24ms max=481.66ms p(90)=92.04ms p(95)=98.88ms
    iterations.....................: 33118  1652.447215/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 316 MB 16 MB/s
    data_sent......................: 7.3 MB 362 kB/s

    WEBSOCKET
    ws_connecting..................: avg=39.04ms   min=2.82ms med=36.17ms max=282.68ms p(90)=53.66ms p(95)=64.71ms
    ws_msgs_received...............: 28112  1402.669126/s
    ws_msgs_sent...................: 28112  1402.669126/s
    ws_orders_requests_sent........: 28112  1402.669126/s
    ws_orders_responses_received...: 28112  1402.669126/s
    ws_orders_rtt_ms...............: avg=38.274367 min=2      med=37      max=379      p(90)=48      p(95)=53     
    ws_session_duration............: avg=72.47ms   min=8.13ms med=72.18ms max=481.56ms p(90)=92ms    p(95)=98.82ms
    ws_sessions....................: 33118  1652.447215/s




running (20.0s), 000/120 VUs, 33118 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
