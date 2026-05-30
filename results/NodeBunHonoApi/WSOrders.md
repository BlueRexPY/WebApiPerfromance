# JS Bun Hono — WS Orders Benchmark

**Tested**: 2026-05-30 23:03:07 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8051/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,145.53 |
| Avg Latency | 34.500369ms |
| Max Latency | 339ms |
| Total Requests | 43,006 |
| Transfer/sec | N/A |
| Port | 8051 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 34.500369 | 50 | 339 |
| Iteration Duration | 55.86ms | 102.2ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 44.48MiB |
| Memory Limit | 1GiB |
| Memory % | 4.34% |
| CPU % | 0.22% |
| PIDs | 19 |

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


running (01.0s), 120/120 VUs, 1666 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4065 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6412 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8838 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11357 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13960 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16130 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17855 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19813 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21703 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 23891 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26057 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28200 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30382 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 32351 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 34479 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36604 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38668 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40798 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 42867 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=50


  █ TOTAL RESULTS 

    checks_total.......: 68761  3430.415843/s
    checks_succeeded...: 74.91% 51510 out of 68761
    checks_failed......: 25.08% 17251 out of 68761

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  59% — ✓ 25755 / ✗ 17251

    EXECUTION
    iteration_duration.............: avg=55.86ms   min=2.62ms   med=51.91ms max=394.48ms p(90)=82.9ms  p(95)=102.2ms 
    iterations.....................: 43006  2145.52528/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 290 MB 15 MB/s
    data_sent......................: 9.1 MB 453 kB/s

    WEBSOCKET
    ws_connecting..................: avg=34.72ms   min=215.53µs med=23.29ms max=252.89ms p(90)=77.68ms p(95)=98.56ms 
    ws_msgs_received...............: 25755  1284.890564/s
    ws_msgs_sent...................: 25755  1284.890564/s
    ws_orders_requests_sent........: 25755  1284.890564/s
    ws_orders_responses_received...: 25755  1284.890564/s
    ws_orders_rtt_ms...............: avg=34.500369 min=1        med=33      max=339      p(90)=45      p(95)=50      
    ws_session_duration............: avg=55.82ms   min=2.59ms   med=51.88ms max=394.45ms p(90)=82.82ms p(95)=102.14ms
    ws_sessions....................: 43006  2145.52528/s




running (20.0s), 000/120 VUs, 43006 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
