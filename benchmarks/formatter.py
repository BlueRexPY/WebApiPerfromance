"""Markdown result formatters.

Generates per-service result files and combined summary tables.
"""

from __future__ import annotations

import re
from datetime import datetime, timezone
from pathlib import Path

from .config import (
    DEFAULT_GHZ,
    DEFAULT_K6,
    DEFAULT_WRK,
    RESULTS_DIR,
    SERVICES,
    TEST_TYPES,
    GhzConfig,
    K6Config,
    Service,
    TestType,
    WrkConfig,
    result_path,
)
from .parser import K6Result, MemoryStats, WrkResult


def _ensure_results_dir() -> None:
    RESULTS_DIR.mkdir(parents=True, exist_ok=True)


def write_result(
    service: Service,
    test_type: TestType,
    wrk_result: WrkResult,
    wrk_config: WrkConfig = DEFAULT_WRK,
    memory: MemoryStats | None = None,
) -> Path:
    """Write a single benchmark result to its markdown file."""
    _ensure_results_dir()
    path = result_path(service, test_type)
    path.parent.mkdir(parents=True, exist_ok=True)

    error_note = ""
    if wrk_result.has_errors:
        error_note = "\n> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.\n"

    rps = f"{wrk_result.requests_per_sec:,.2f}"
    if wrk_result.has_errors:
        rps += "\\*"

    mem_section = ""
    if memory and memory.mem_usage:
        mem_section = f"""
## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | {memory.mem_usage} |
| Memory Limit | {memory.mem_limit} |
| Memory % | {memory.mem_percent} |
| CPU % | {memory.cpu_percent} |
| PIDs | {memory.pids} |
"""

    if test_type.tool == "ghz":
        test_cmd = (
            f"`ghz --insecure --proto api.proto --call {test_type.path} "
            f"-c {wrk_config.connections} -z {wrk_config.duration_flag} "
            f"127.0.0.1:{service.grpc_port}`"
        )
        port = service.grpc_port
        stats_section = ""
    else:
        test_cmd = (
            f"`wrk -t {wrk_config.threads} -c {wrk_config.connections} "
            f"-d {wrk_config.duration_flag} http://127.0.0.1:{service.port}{test_type.path}`"
        )
        port = service.port
        stats_section = f"""## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | {wrk_result.avg_latency} | {wrk_result.stdev_latency} | {wrk_result.max_latency} | {wrk_result.latency_pct} |
| Req/Sec | {wrk_result.avg_req_sec} | {wrk_result.stdev_req_sec} | {wrk_result.max_req_sec} | {wrk_result.req_sec_pct} |
"""

    content = f"""# {service.display_name} — {test_type.label} Benchmark

**Tested**: {datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")}
**Command**: {test_cmd}
{error_note}
## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | {rps} |
| Avg Latency | {wrk_result.avg_latency} |
| Max Latency | {wrk_result.max_latency} |
| Total Requests | {wrk_result.total_requests:,} |
| Transfer/sec | {wrk_result.transfer_per_sec} |
| Port | {port} |
{stats_section}
## Raw Output

```
{wrk_result.raw.strip()}
```
"""
    path.write_text(content, encoding="utf-8")
    return path


def write_ws_result(
    service: Service,
    test_type: TestType,
    k6_result: K6Result,
    k6_config: K6Config = DEFAULT_K6,
    memory: MemoryStats | None = None,
) -> Path:
    """Write a single k6 WebSocket benchmark result to its markdown file."""
    _ensure_results_dir()
    path = result_path(service, test_type)
    path.parent.mkdir(parents=True, exist_ok=True)

    error_note = ""
    if k6_result.has_errors:
        error_note = "\n> **Warning**: Some checks failed during this test.\n"

    its = f"{k6_result.iterations_per_sec:,.2f}"
    if k6_result.has_errors:
        its += "\\*"

    mem_section = ""
    if memory and memory.mem_usage:
        mem_section = f"""
## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | {memory.mem_usage} |
| Memory Limit | {memory.mem_limit} |
| Memory % | {memory.mem_percent} |
| CPU % | {memory.cpu_percent} |
| PIDs | {memory.pids} |
"""

    content = f"""# {service.display_name} — {test_type.label} Benchmark

**Tested**: {datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")}
**Command**: `k6 run --vus {k6_config.vus} --duration {k6_config.duration_flag} ws://127.0.0.1:{service.port}{test_type.path}`
{error_note}
## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | {its} |
| Avg Latency | {k6_result.avg_rtt_ms}ms |
| Max Latency | {k6_result.max_rtt_ms}ms |
| Total Requests | {k6_result.iterations:,} |
| Transfer/sec | N/A |
| Port | {service.port} |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | {k6_result.avg_rtt_ms} | {k6_result.p95_rtt_ms} | {k6_result.max_rtt_ms} |
| Iteration Duration | {k6_result.avg_iter_duration} | {k6_result.p95_iter_duration} | — |
| Checks Passed | {k6_result.checks_passed_pct:.2f}% | — | — |
{mem_section}
## Raw Output

```
{k6_result.raw.strip()}
```
"""
    path.write_text(content, encoding="utf-8")
    return path


def write_summary(test_type_name: str | None = None) -> list[Path]:
    """Generate combined summary markdown file(s) from individual results.

    If test_type_name is None, generates summaries for all test types.
    Returns list of written file paths.
    """
    _ensure_results_dir()
    types_to_summarize = (
        {test_type_name: TEST_TYPES[test_type_name]} if test_type_name else TEST_TYPES
    )
    written: list[Path] = []

    for tt_name, tt in types_to_summarize.items():
        rows: list[tuple[float, str]] = []

        for svc in SERVICES.values():
            rpath = result_path(svc, tt)
            if not rpath.exists():
                continue

            content = rpath.read_text(encoding="utf-8")
            rps_match = re.search(r"Requests/sec\s*\|\s*([^\|]+)", content)
            lat_match = re.search(r"Avg Latency\s*\|\s*([^\|]+)", content)
            max_lat_match = re.search(r"Max Latency\s*\|\s*([^\|]+)", content)
            total_match = re.search(r"Total Requests\s*\|\s*([^\|]+)", content)
            transfer_match = re.search(r"Transfer/sec\s*\|\s*([^\|]+)", content)
            mem_match = re.search(r"Memory Usage\s*\|\s*([^\|]+)", content)

            rps_str = rps_match.group(1).strip() if rps_match else "N/A"
            rps_val = float(
                rps_str.replace(",", "").replace("\\*", "").replace("*", "") or "0"
            )
            lat = lat_match.group(1).strip() if lat_match else "N/A"
            max_lat = max_lat_match.group(1).strip() if max_lat_match else "N/A"
            total = total_match.group(1).strip() if total_match else "N/A"
            transfer = transfer_match.group(1).strip() if transfer_match else "N/A"
            mem = mem_match.group(1).strip() if mem_match else "N/A"

            row = f"| {svc.display_name} | {svc.port} | {rps_str} | {lat} | {max_lat} | {total} | {transfer} | {mem} |"
            rows.append((rps_val, row))

        # Sort descending by req/sec
        rows.sort(key=lambda r: r[0], reverse=True)
        table_rows = "\n".join(r[1] for r in rows)

        summary_path = RESULTS_DIR / f"Summary.{tt.label.replace(' ', '')}.md"
        if tt.tool == "ghz":
            test_cmd = f"`ghz --insecure --proto api.proto --call {tt.path} -c {DEFAULT_GHZ.concurrency} -z {DEFAULT_GHZ.duration_flag} 127.0.0.1:PORT`"
            config_lines = f"- Concurrency: {DEFAULT_GHZ.concurrency}\n- Duration: {DEFAULT_GHZ.duration_seconds} seconds"
        elif tt.tool == "k6":
            test_cmd = f"`k6 run --vus {DEFAULT_K6.vus} --duration {DEFAULT_K6.duration_flag} ws://127.0.0.1:PORT{tt.path}`"
            config_lines = f"- VUs: {DEFAULT_K6.vus}\n- Duration: {DEFAULT_K6.duration_seconds} seconds"
        else:
            test_cmd = f"`wrk -t {DEFAULT_WRK.threads} -c {DEFAULT_WRK.connections} -d {DEFAULT_WRK.duration_flag} http://127.0.0.1:PORT{tt.path}`"
            config_lines = f"- Threads: {DEFAULT_WRK.threads}\n- Connections: {DEFAULT_WRK.connections}\n- Duration: {DEFAULT_WRK.duration_seconds} seconds"
        summary_content = f"""# {tt.label} Performance Test Results — Summary

**Generated**: {datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")}
**Test Command**: {test_cmd}

**Test Configuration**:

{config_lines}
- Endpoint: `{tt.path}` ({tt.label})

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
{table_rows}

**Note**: \\* = Non-2xx or 3xx responses occurred during the test
"""
        summary_path.write_text(summary_content, encoding="utf-8")
        written.append(summary_path)

    return written
