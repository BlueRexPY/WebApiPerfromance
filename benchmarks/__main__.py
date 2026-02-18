"""CLI entry point for the benchmark suite.

Usage:
    # Run all benchmarks (all services, all test types)
    python -m benchmarks run

    # Run benchmarks for a single service
    python -m benchmarks run --service dotnetapiaot

    # Run a single test type for one service
    python -m benchmarks run --service dotnetapiaot --test hello_world

    # Run only specific test types across all services
    python -m benchmarks run --test hello_world

    # Custom wrk settings
    python -m benchmarks run --threads 4 --connections 200 --duration 30

    # List available services and test types
    python -m benchmarks list

    # Generate summary from existing results
    python -m benchmarks summary

    # Stop all running services
    python -m benchmarks stop
"""

from __future__ import annotations

import argparse
import logging
import sys

from .config import DEFAULT_WRK, SERVICES, TEST_TYPES, WrkConfig
from .formatter import write_summary
from .runner import run_all, start_monitoring, stop_all_services, stop_monitoring


class _ColorFormatter(logging.Formatter):
    """Logging formatter that colorizes output by level."""

    _RESET = "\033[0m"
    _BOLD = "\033[1m"
    _LEVEL_COLORS: dict[int, str] = {
        logging.DEBUG: "\033[36m",  # cyan
        logging.INFO: "\033[32m",  # green
        logging.WARNING: "\033[33m",  # yellow
        logging.ERROR: "\033[31m",  # red
        logging.CRITICAL: "\033[35m",  # magenta
    }

    def format(self, record: logging.LogRecord) -> str:
        color = self._LEVEL_COLORS.get(record.levelno, "")
        time_str = self.formatTime(record, "%H:%M:%S")
        level = f"{color}{self._BOLD}{record.levelname:<8}{self._RESET}"
        msg = record.getMessage()
        # Highlight success / failure markers
        if msg.startswith("\u2713"):  # ✓
            msg = f"\033[32m{self._BOLD}{msg}{self._RESET}"
        elif msg.startswith("\u2717"):  # ✗
            msg = f"\033[31m{self._BOLD}{msg}{self._RESET}"
        return f"{color}{time_str}{self._RESET} │ {level} │ {msg}"


def _setup_logging(verbose: bool = False) -> None:
    level = logging.DEBUG if verbose else logging.INFO
    handler = logging.StreamHandler()
    handler.setFormatter(_ColorFormatter())
    logging.root.setLevel(level)
    logging.root.handlers = [handler]


def _cmd_list(args: argparse.Namespace) -> int:
    """List available services and test types."""
    print("\n── Services ────────────────────────────────────────")
    print(f"  {'Name':<20} {'Port':<6} {'Display Name'}")
    print(f"  {'─'*20} {'─'*6} {'─'*20}")
    for svc in SERVICES.values():
        print(f"  {svc.name:<20} {svc.port:<6} {svc.display_name}")

    print("\n── Test Types ──────────────────────────────────────")
    print(f"  {'Name':<15} {'Path':<10} {'Label'}")
    print(f"  {'─'*15} {'─'*10} {'─'*20}")
    for tt in TEST_TYPES.values():
        print(f"  {tt.name:<15} {tt.path:<10} {tt.label}")

    print(f"\n  Total combinations: {len(SERVICES) * len(TEST_TYPES)}")
    return 0


def _cmd_run(args: argparse.Namespace) -> int:
    """Run benchmarks."""
    wrk_config = WrkConfig(
        threads=args.threads,
        connections=args.connections,
        duration_seconds=args.duration,
    )

    services = args.service if args.service else None
    test_types = args.test if args.test else None

    # Validate service names
    if services:
        for s in services:
            if s not in SERVICES:
                print(
                    f"Error: Unknown service '{s}'. Use 'list' to see available services."
                )
                return 1

    # Validate test type names
    if test_types:
        for t in test_types:
            if t not in TEST_TYPES:
                print(
                    f"Error: Unknown test type '{t}'. Use 'list' to see available test types."
                )
                return 1

    results = run_all(
        services,
        test_types,
        wrk_config,
        parallel=getattr(args, "parallel", False),
        max_workers=getattr(args, "max_workers", 0),
        monitoring=getattr(args, "monitoring", False),
    )

    # Print summary
    print("\n" + "═" * 70)
    print("  BENCHMARK RESULTS")
    print("═" * 70)

    succeeded = [r for r in results if r.success]
    failed = [r for r in results if not r.success]

    if succeeded:
        print(f"\n  ✓ Passed: {len(succeeded)}")
        # Sort by req/sec descending
        succeeded.sort(key=lambda r: r.wrk_result.requests_per_sec, reverse=True)
        print(
            f"  {'Service':<20} {'Test':<15} {'Req/sec':>12} {'Avg Latency':>12} {'Memory':>12}"
        )
        print(f"  {'─'*20} {'─'*15} {'─'*12} {'─'*12} {'─'*12}")
        for r in succeeded:
            rps = f"{r.wrk_result.requests_per_sec:,.2f}"
            mem = r.memory.mem_usage if r.memory.mem_usage else "N/A"
            print(
                f"  {r.service.display_name:<20} "
                f"{r.test_type.label:<15} "
                f"{rps:>12} "
                f"{r.wrk_result.avg_latency:>12} "
                f"{mem:>12}"
            )

    if failed:
        print(f"\n  ✗ Failed: {len(failed)}")
        for r in failed:
            print(f"    {r.service.display_name} / {r.test_type.label}: {r.error}")

    print("\n  Results saved to: results/")
    return 0 if not failed else 1


def _cmd_summary(args: argparse.Namespace) -> int:
    """Generate summary markdown from existing results."""
    test_type = args.test if hasattr(args, "test") and args.test else None
    paths = write_summary(test_type)

    if paths:
        print("Summary files generated:")
        for p in paths:
            print(f"  → {p}")
    else:
        print("No results found. Run benchmarks first.")

    return 0


def _cmd_stop(args: argparse.Namespace) -> int:
    """Stop all running services."""
    stop_all_services()
    print("All services stopped.")
    return 0


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        prog="benchmarks",
        description="Web API Performance Benchmark Suite",
    )
    parser.add_argument(
        "-v",
        "--verbose",
        action="store_true",
        help="Enable debug logging",
    )

    subparsers = parser.add_subparsers(dest="command", help="Command to run")

    # ── run ──
    run_parser = subparsers.add_parser("run", help="Run benchmarks")
    run_parser.add_argument(
        "--service",
        "-s",
        action="append",
        help="Service to benchmark (repeatable). Default: all.",
    )
    run_parser.add_argument(
        "--test",
        "-t",
        action="append",
        help="Test type to run (repeatable). Default: all.",
    )
    run_parser.add_argument(
        "--threads",
        type=int,
        default=DEFAULT_WRK.threads,
        help=f"wrk threads (default: {DEFAULT_WRK.threads})",
    )
    run_parser.add_argument(
        "--connections",
        "-c",
        type=int,
        default=DEFAULT_WRK.connections,
        help=f"wrk connections (default: {DEFAULT_WRK.connections})",
    )
    run_parser.add_argument(
        "--duration",
        "-d",
        type=int,
        default=DEFAULT_WRK.duration_seconds,
        help=f"wrk duration seconds (default: {DEFAULT_WRK.duration_seconds})",
    )
    run_parser.add_argument(
        "--parallel",
        "-p",
        action="store_true",
        default=False,
        help="Run service benchmarks in parallel (faster but may affect accuracy)",
    )
    run_parser.add_argument(
        "--max-workers",
        type=int,
        default=20,
        help="Max concurrent wrk processes in parallel mode. 0 = unlimited, all at once (default: 20)",
    )
    run_parser.add_argument(
        "--monitoring",
        "-m",
        action="store_true",
        default=False,
        help="Start monitoring stack (Prometheus, Grafana, cAdvisor) during benchmarks",
    )

    # ── list ──
    subparsers.add_parser("list", help="List services and test types")

    # ── summary ──
    summary_parser = subparsers.add_parser(
        "summary", help="Generate summary from results"
    )
    summary_parser.add_argument(
        "--test",
        help="Generate summary for a specific test type only",
    )

    # ── stop ──
    subparsers.add_parser("stop", help="Stop all Docker services")

    args = parser.parse_args(argv)
    _setup_logging(args.verbose)

    if args.command is None:
        parser.print_help()
        return 0

    commands = {
        "run": _cmd_run,
        "list": _cmd_list,
        "summary": _cmd_summary,
        "stop": _cmd_stop,
    }

    return commands[args.command](args)


if __name__ == "__main__":
    sys.exit(main())
