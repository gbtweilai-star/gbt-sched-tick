#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_sched_tick info
PYTHONPATH=src python -m gbt_sched_tick check --payload '{}'
PYTHONPATH=src python -m gbt_sched_tick run   --payload '{}'
