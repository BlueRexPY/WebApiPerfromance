# JS Bun Express — WS Orders Benchmark

**Tested**: 2026-05-30 23:00:29 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8049/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,152.86 |
| Avg Latency | 32.748789ms |
| Max Latency | 292ms |
| Total Requests | 43,181 |
| Transfer/sec | N/A |
| Port | 8049 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 32.748789 | 46 | 292 |
| Iteration Duration | 55.65ms | 104.6ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.25MiB |
| Memory Limit | 1GiB |
| Memory % | 5.59% |
| CPU % | 0.24% |
| PIDs | 15 |

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


running (01.0s), 120/120 VUs, 1805 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4114 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6600 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9051 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11523 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13906 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16068 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18047 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20134 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22392 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24570 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26767 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28782 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30805 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 32817 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 34828 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36872 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38792 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40894 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 43045 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=46


  █ TOTAL RESULTS 

    checks_total.......: 68773  3428.793115/s
    checks_succeeded...: 74.42% 51184 out of 68773
    checks_failed......: 25.57% 17589 out of 68773

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  59% — ✓ 25592 / ✗ 17589

    EXECUTION
    iteration_duration.............: avg=55.65ms   min=1.75ms   med=51.89ms max=388.51ms p(90)=80.9ms  p(95)=104.6ms 
    iterations.....................: 43181  2152.861086/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 288 MB 14 MB/s
    data_sent......................: 9.1 MB 454 kB/s

    WEBSOCKET
    ws_connecting..................: avg=35.77ms   min=304.53µs med=24.33ms max=388.41ms p(90)=78.33ms p(95)=101.9ms 
    ws_msgs_received...............: 25592  1275.932029/s
    ws_msgs_sent...................: 25592  1275.932029/s
    ws_orders_requests_sent........: 25592  1275.932029/s
    ws_orders_responses_received...: 25592  1275.932029/s
    ws_orders_rtt_ms...............: avg=32.748789 min=0        med=32      max=292      p(90)=43      p(95)=46      
    ws_session_duration............: avg=55.6ms    min=1.71ms   med=51.85ms max=388.43ms p(90)=80.83ms p(95)=104.56ms
    ws_sessions....................: 43181  2152.861086/s




running (20.1s), 000/120 VUs, 43181 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
