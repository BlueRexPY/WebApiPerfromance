"""Core benchmark runner.

Handles Docker lifecycle and wrk execution for benchmark runs.
"""

from __future__ import annotations

import json
import logging
import shutil
import subprocess
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass, field
from pathlib import Path

from .config import (
    COMPOSE_FILE,
    DEFAULT_WRK,
    SERVICES,
    TEST_TYPES,
    Service,
    TestType,
    WrkConfig,
)
from .formatter import write_result, write_summary
from .parser import MemoryStats, WrkResult, parse_wrk_output

logger = logging.getLogger(__name__)

# ── Timeouts ───────────────────────────────────────────────────────────────────
SERVICE_START_TIMEOUT = 120  # seconds to wait for a service to respond
HEALTH_CHECK_INTERVAL = 2  # seconds between health check attempts
WARMUP_REQUESTS = 5  # quick requests before the real benchmark
WARMUP_DELAY = 2  # seconds to wait after warmup


# ── Exceptions ─────────────────────────────────────────────────────────────────
class BenchmarkError(Exception):
    """Raised when a benchmark run fails."""


class ServiceStartError(BenchmarkError):
    """Raised when a Docker service fails to start or become healthy."""


class WrkNotFoundError(BenchmarkError):
    """Raised when wrk is not installed."""


# ── Docker helpers ─────────────────────────────────────────────────────────────
def _compose_cmd() -> list[str]:
    """Return the base docker compose command."""
    # Support both `docker compose` (v2) and `docker-compose` (v1)
    if shutil.which("docker") and _has_compose_v2():
        return ["docker", "compose", "-f", str(COMPOSE_FILE)]
    if shutil.which("docker-compose"):
        return ["docker-compose", "-f", str(COMPOSE_FILE)]
    raise BenchmarkError("Neither 'docker compose' nor 'docker-compose' found")


def _has_compose_v2() -> bool:
    try:
        r = subprocess.run(
            ["docker", "compose", "version"],
            capture_output=True,
            text=True,
            timeout=10,
        )
        return r.returncode == 0
    except Exception:
        return False


def ensure_db_up() -> None:
    """Start the database service and wait for it to be healthy."""
    cmd = _compose_cmd()
    logger.info("Starting database service...")
    subprocess.run(
        [*cmd, "up", "-d", "db"],
        check=True,
        capture_output=True,
        text=True,
    )
    # Wait for healthy
    deadline = time.monotonic() + SERVICE_START_TIMEOUT
    while time.monotonic() < deadline:
        r = subprocess.run(
            [*cmd, "ps", "--format", "json", "db"],
            capture_output=True,
            text=True,
        )
        if r.returncode == 0 and r.stdout.strip():
            try:
                # docker compose v2 outputs JSON
                for line in r.stdout.strip().splitlines():
                    info = json.loads(line)
                    health = info.get("Health", info.get("State", ""))
                    if "healthy" in health.lower():
                        logger.info("Database is healthy")
                        return
            except (json.JSONDecodeError, KeyError):
                pass
        time.sleep(HEALTH_CHECK_INTERVAL)
    raise ServiceStartError("Database did not become healthy in time")


def start_service(service: Service) -> None:
    """Start a specific docker-compose service (and db dependency)."""
    ensure_db_up()
    cmd = _compose_cmd()
    logger.info("Starting service: %s", service.name)
    subprocess.run(
        [*cmd, "up", "-d", "--build", service.name],
        check=True,
        capture_output=True,
        text=True,
    )


def stop_service(service: Service) -> None:
    """Stop a specific docker-compose service (leaves db running)."""
    cmd = _compose_cmd()
    logger.info("Stopping service: %s", service.name)
    subprocess.run(
        [*cmd, "stop", service.name],
        capture_output=True,
        text=True,
    )
    subprocess.run(
        [*cmd, "rm", "-f", service.name],
        capture_output=True,
        text=True,
    )


def stop_all_services() -> None:
    """Stop all services including db."""
    cmd = _compose_cmd()
    logger.info("Stopping all services...")
    subprocess.run(
        [*cmd, "down"],
        capture_output=True,
        text=True,
    )


# ── Health check ───────────────────────────────────────────────────────────────
def wait_for_service(service: Service, timeout: int = SERVICE_START_TIMEOUT) -> None:
    """Wait until the service responds to HTTP on its port."""
    import urllib.error
    import urllib.request

    url = f"http://127.0.0.1:{service.port}/"
    deadline = time.monotonic() + timeout
    last_error = None

    while time.monotonic() < deadline:
        try:
            req = urllib.request.Request(url, method="GET")
            with urllib.request.urlopen(req, timeout=5) as resp:
                if resp.status < 500:
                    logger.info(
                        "Service %s is responding (status %d)",
                        service.name,
                        resp.status,
                    )
                    return
        except Exception as e:
            last_error = e
            time.sleep(HEALTH_CHECK_INTERVAL)

    raise ServiceStartError(
        f"Service {service.name} on port {service.port} did not respond "
        f"within {timeout}s. Last error: {last_error}"
    )


# ── Warmup ─────────────────────────────────────────────────────────────────────
def warmup(service: Service, test_type: TestType) -> None:
    """Send a few warmup requests before benchmarking."""
    import urllib.error
    import urllib.request

    url = f"http://127.0.0.1:{service.port}{test_type.path}"
    logger.info(
        "Warming up %s %s (%d requests)...",
        service.name,
        test_type.path,
        WARMUP_REQUESTS,
    )

    for _ in range(WARMUP_REQUESTS):
        try:
            with urllib.request.urlopen(url, timeout=10):
                pass
        except Exception:
            pass
        time.sleep(0.1)

    time.sleep(WARMUP_DELAY)


# ── wrk execution ─────────────────────────────────────────────────────────────
def get_container_name(service: Service) -> str:
    """Get the running container name for a docker-compose service."""
    cmd = _compose_cmd()
    r = subprocess.run(
        [*cmd, "ps", "-q", service.name],
        capture_output=True,
        text=True,
    )
    container_id = r.stdout.strip().splitlines()[0] if r.stdout.strip() else ""
    if not container_id:
        return ""
    # Get the container name from the ID
    r2 = subprocess.run(
        ["docker", "inspect", "--format", "{{.Name}}", container_id],
        capture_output=True,
        text=True,
    )
    name = r2.stdout.strip().lstrip("/")
    return name or container_id


def get_memory_stats(service: Service) -> MemoryStats:
    """Get memory/CPU usage of a running service container via docker stats."""
    container = get_container_name(service)
    if not container:
        logger.warning("Could not find container for %s", service.name)
        return MemoryStats()

    r = subprocess.run(
        [
            "docker",
            "stats",
            "--no-stream",
            "--format",
            "{{.MemUsage}}|{{.MemPerc}}|{{.CPUPerc}}|{{.PIDs}}",
            container,
        ],
        capture_output=True,
        text=True,
        timeout=15,
    )
    if r.returncode != 0 or not r.stdout.strip():
        logger.warning("docker stats failed for %s: %s", service.name, r.stderr)
        return MemoryStats()

    parts = r.stdout.strip().split("|")
    if len(parts) < 4:
        return MemoryStats()

    mem_usage_parts = parts[0].split("/")
    return MemoryStats(
        mem_usage=mem_usage_parts[0].strip() if len(mem_usage_parts) > 0 else "",
        mem_limit=mem_usage_parts[1].strip() if len(mem_usage_parts) > 1 else "",
        mem_percent=parts[1].strip(),
        cpu_percent=parts[2].strip(),
        pids=int(parts[3].strip()) if parts[3].strip().isdigit() else 0,
    )


def run_wrk(
    service: Service,
    test_type: TestType,
    wrk_config: WrkConfig = DEFAULT_WRK,
) -> WrkResult:
    """Execute wrk and return parsed results."""
    if not shutil.which("wrk"):
        raise WrkNotFoundError(
            "wrk is not installed. Install it with: sudo apt install wrk"
        )

    url = f"http://127.0.0.1:{service.port}{test_type.path}"
    cmd = [
        "wrk",
        "-t",
        str(wrk_config.threads),
        "-c",
        str(wrk_config.connections),
        "-d",
        wrk_config.duration_flag,
        url,
    ]

    logger.info("Running: %s", " ".join(cmd))
    result = subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=wrk_config.duration_seconds + 30,
    )

    if result.returncode != 0:
        raise BenchmarkError(
            f"wrk exited with code {result.returncode}: {result.stderr}"
        )

    return parse_wrk_output(result.stdout)


# ── High-level runners ────────────────────────────────────────────────────────
@dataclass
class BenchmarkResult:
    """Result of a single benchmark run."""

    service: Service
    test_type: TestType
    wrk_result: WrkResult
    result_path: Path
    success: bool
    error: str = ""
    memory: MemoryStats = field(default_factory=MemoryStats)


def run_benchmark(
    service: Service,
    test_type: TestType,
    wrk_config: WrkConfig = DEFAULT_WRK,
    *,
    manage_docker: bool = True,
) -> BenchmarkResult:
    """Run a complete benchmark: start service → warmup → wrk → save result.

    Args:
        service: The service to benchmark.
        test_type: The test scenario to run.
        wrk_config: wrk parameters.
        manage_docker: If True, start/stop the service automatically.
                       Set False when running in bulk with shared containers.
    """
    try:
        if manage_docker:
            start_service(service)

        wait_for_service(service)
        warmup(service, test_type)

        # Capture memory before benchmark
        mem_before = get_memory_stats(service)
        wrk_result = run_wrk(service, test_type, wrk_config)
        # Capture memory after benchmark (peak usage)
        mem_after = get_memory_stats(service)
        # Use whichever shows higher usage
        memory = mem_after if mem_after.mem_usage else mem_before

        path = write_result(service, test_type, wrk_result, wrk_config, memory)

        logger.info(
            "✓ %s / %s — %.2f req/s → %s",
            service.display_name,
            test_type.label,
            wrk_result.requests_per_sec,
            path,
        )

        return BenchmarkResult(
            service=service,
            test_type=test_type,
            wrk_result=wrk_result,
            result_path=path,
            success=True,
            memory=memory,
        )

    except Exception as e:
        logger.error("✗ %s / %s — %s", service.display_name, test_type.label, e)
        return BenchmarkResult(
            service=service,
            test_type=test_type,
            wrk_result=WrkResult(),
            result_path=Path(),
            success=False,
            error=str(e),
        )
    finally:
        if manage_docker:
            stop_service(service)


def run_all(
    services: list[str] | None = None,
    test_types: list[str] | None = None,
    wrk_config: WrkConfig = DEFAULT_WRK,
    *,
    parallel: bool = False,
    max_workers: int = 0,
) -> list[BenchmarkResult]:
    """Run benchmarks for multiple services and test types.

    In sequential mode (default), services are tested one at a time.

    In parallel mode, ALL services are started simultaneously, then ALL
    wrk processes are launched at the same time (one per service×test combo).
    max_workers=0 (default) means no cap — every combo runs concurrently.

    Args:
        services: List of service names. None = all services.
        test_types: List of test type names. None = all test types.
        wrk_config: wrk parameters.
        parallel: If True, start all services and fire all wrk runs at once.
        max_workers: Max concurrent wrk processes. 0 = unlimited (all at once).

    Returns:
        List of all benchmark results.
    """
    svc_list = [SERVICES[s] for s in (services or SERVICES.keys())]
    tt_list = [TEST_TYPES[t] for t in (test_types or TEST_TYPES.keys())]

    ensure_db_up()

    if parallel:
        results = _run_parallel(svc_list, tt_list, wrk_config, max_workers)
    else:
        results = _run_sequential(svc_list, tt_list, wrk_config)

    # Generate summaries
    for tt in tt_list:
        write_summary(tt.name)

    return results


def _run_sequential(
    svc_list: list[Service],
    tt_list: list[TestType],
    wrk_config: WrkConfig,
) -> list[BenchmarkResult]:
    """Run benchmarks sequentially, one service at a time."""
    results: list[BenchmarkResult] = []
    total = len(svc_list) * len(tt_list)
    current = 0

    for svc in svc_list:
        try:
            start_service(svc)
            wait_for_service(svc)

            for tt in tt_list:
                current += 1
                logger.info(
                    "[%d/%d] Benchmarking %s — %s",
                    current,
                    total,
                    svc.display_name,
                    tt.label,
                )
                result = run_benchmark(svc, tt, wrk_config, manage_docker=False)
                results.append(result)

        except Exception as e:
            logger.error("Failed to start %s: %s", svc.name, e)
            for tt in tt_list:
                current += 1
                results.append(
                    BenchmarkResult(
                        service=svc,
                        test_type=tt,
                        wrk_result=WrkResult(),
                        result_path=Path(),
                        success=False,
                        error=str(e),
                    )
                )
        finally:
            stop_service(svc)

    return results


def _start_and_wait(service: Service) -> None:
    """Start a service and block until it responds."""
    start_service(service)
    wait_for_service(service)


def _run_parallel(
    svc_list: list[Service],
    tt_list: list[TestType],
    wrk_config: WrkConfig,
    max_workers: int,
) -> list[BenchmarkResult]:
    """True parallel execution.

    Phase 1 — start every service simultaneously.
    Phase 2 — warmup every (service × test_type) simultaneously.
    Phase 3 — fire every wrk process at the same time.
    Phase 4 — stop all services simultaneously.

    max_workers=0 means no cap on concurrent wrk processes.
    """
    results: list[BenchmarkResult] = []
    total_combos = len(svc_list) * len(tt_list)

    logger.info(
        "Parallel mode: starting %d services, then launching %d wrk processes simultaneously",
        len(svc_list),
        total_combos,
    )

    # ── Phase 1: start all services in parallel ────────────────────────────────
    started: list[Service] = []

    with ThreadPoolExecutor(max_workers=len(svc_list)) as executor:
        futures = {executor.submit(_start_and_wait, svc): svc for svc in svc_list}
        for future in as_completed(futures):
            svc = futures[future]
            try:
                future.result()
                started.append(svc)
                logger.info("✓ Up: %s (port %d)", svc.name, svc.port)
            except Exception as e:
                logger.error("✗ Failed to start %s: %s", svc.name, e)
                for tt in tt_list:
                    results.append(
                        BenchmarkResult(
                            service=svc,
                            test_type=tt,
                            wrk_result=WrkResult(),
                            result_path=Path(),
                            success=False,
                            error=str(e),
                        )
                    )

    if not started:
        return results

    # ── Phase 2: warmup all (service × test_type) in parallel ─────────────────
    warmup_combos = [(svc, tt) for svc in started for tt in tt_list]
    with ThreadPoolExecutor(max_workers=len(warmup_combos)) as executor:
        warmup_futures = [executor.submit(warmup, svc, tt) for svc, tt in warmup_combos]
        for f in as_completed(warmup_futures):
            try:
                f.result()
            except Exception:
                pass  # warmup failures are non-fatal

    # ── Phase 3: fire all wrk processes simultaneously ─────────────────────────
    bench_combos = [(svc, tt) for svc in started for tt in tt_list]
    # 0 = unlimited: one thread per combo so all wrk runs start at the same time
    workers = (
        len(bench_combos) if max_workers <= 0 else min(max_workers, len(bench_combos))
    )

    logger.info(
        "Launching %d wrk processes (%d concurrent)...",
        len(bench_combos),
        workers,
    )

    with ThreadPoolExecutor(max_workers=workers) as executor:
        futures = {
            executor.submit(run_benchmark, svc, tt, wrk_config, manage_docker=False): (
                svc,
                tt,
            )
            for svc, tt in bench_combos
        }
        for future in as_completed(futures):
            svc, tt = futures[future]
            try:
                results.append(future.result())
            except Exception as e:
                logger.error("Benchmark failed for %s / %s: %s", svc.name, tt.name, e)
                results.append(
                    BenchmarkResult(
                        service=svc,
                        test_type=tt,
                        wrk_result=WrkResult(),
                        result_path=Path(),
                        success=False,
                        error=str(e),
                    )
                )

    # ── Phase 4: stop all services in parallel ─────────────────────────────────
    with ThreadPoolExecutor(max_workers=len(started)) as executor:
        list(executor.map(stop_service, started))

    return results
