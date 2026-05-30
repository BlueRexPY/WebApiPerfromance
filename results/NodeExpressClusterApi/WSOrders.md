# JS Node Express Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 22:46:04 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8041/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,858.64 |
| Avg Latency | 4.254489ms |
| Max Latency | 131ms |
| Total Requests | 37,303 |
| Transfer/sec | N/A |
| Port | 8041 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 4.254489 | 9 | 131 |
| Iteration Duration | 64.45ms | 106.59ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 98.7MiB |
| Memory Limit | 1GiB |
| Memory % | 9.64% |
| CPU % | 0.02% |
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


running (01.0s), 120/120 VUs, 1229 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 2833 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 4504 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 6106 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7630 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9480 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11500 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 13423 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 15710 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 17722 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 19857 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 21424 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 22981 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 24966 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 26859 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 28811 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 30921 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 33043 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 35074 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 37183 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=9


  █ TOTAL RESULTS 

    checks_total.......: 65536  3265.355453/s
    checks_succeeded...: 86.16% 56466 out of 65536
    checks_failed......: 13.83% 9070 out of 65536

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  75% — ✓ 28233 / ✗ 9070

    EXECUTION
    iteration_duration.............: avg=64.45ms  min=10.92ms med=62.02ms max=271.97ms p(90)=93.25ms p(95)=106.59ms
    iterations.....................: 37303  1858.63578/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 317 MB 16 MB/s
    data_sent......................: 8.1 MB 402 kB/s

    WEBSOCKET
    ws_connecting..................: avg=60.6ms   min=9.58ms  med=57.65ms max=267.05ms p(90)=88.27ms p(95)=101.6ms 
    ws_msgs_received...............: 28233  1406.719673/s
    ws_msgs_sent...................: 28233  1406.719673/s
    ws_orders_requests_sent........: 28233  1406.719673/s
    ws_orders_responses_received...: 28233  1406.719673/s
    ws_orders_rtt_ms...............: avg=4.254489 min=0       med=3       max=131      p(90)=6       p(95)=9       
    ws_session_duration............: avg=64.41ms  min=10.9ms  med=61.98ms max=271.93ms p(90)=93.2ms  p(95)=106.53ms
    ws_sessions....................: 37303  1858.63578/s




running (20.1s), 000/120 VUs, 37303 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
