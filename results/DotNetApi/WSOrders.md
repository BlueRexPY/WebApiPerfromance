# C# .NET API — WS Orders Benchmark

**Tested**: 2026-05-30 20:47:18 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8001/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,664.70 |
| Avg Latency | 18.879532ms |
| Max Latency | 146ms |
| Total Requests | 53,411 |
| Transfer/sec | N/A |
| Port | 8001 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 18.879532 | 52 | 146 |
| Iteration Duration | 44.98ms | 104.12ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 79.7MiB |
| Memory Limit | 1GiB |
| Memory % | 7.78% |
| CPU % | 0.01% |
| PIDs | 21 |

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


running (01.0s), 120/120 VUs, 2642 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5555 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8841 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11804 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 14043 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16922 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 21148 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 25989 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 29472 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31645 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 33814 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 35939 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 38126 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 40289 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 42485 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 44680 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 46886 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 49057 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 51077 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 53291 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=52


  █ TOTAL RESULTS 

    checks_total.......: 81875  4084.776046/s
    checks_succeeded...: 69.53% 56928 out of 81875
    checks_failed......: 30.46% 24947 out of 81875

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  53% — ✓ 28464 / ✗ 24947

    EXECUTION
    iteration_duration.............: avg=44.98ms   min=3.45ms   med=35.24ms max=310.75ms p(90)=86.06ms p(95)=104.12ms
    iterations.....................: 53411  2664.695858/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 11 MB  557 kB/s

    WEBSOCKET
    ws_connecting..................: avg=33.55ms   min=991.18µs med=18.91ms max=310.68ms p(90)=79.1ms  p(95)=98.59ms 
    ws_msgs_received...............: 28464  1420.080188/s
    ws_msgs_sent...................: 28464  1420.080188/s
    ws_orders_requests_sent........: 28464  1420.080188/s
    ws_orders_responses_received...: 28464  1420.080188/s
    ws_orders_rtt_ms...............: avg=18.879532 min=0        med=15      max=146      p(90)=37      p(95)=52      
    ws_session_duration............: avg=44.89ms   min=3.42ms   med=35.13ms max=310.7ms  p(90)=85.98ms p(95)=104.03ms
    ws_sessions....................: 53411  2664.695858/s




running (20.0s), 000/120 VUs, 53411 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
