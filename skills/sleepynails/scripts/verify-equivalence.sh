#!/usr/bin/env bash
# Compare before and after baseline snapshots produced by baseline-snapshot.sh.
# Usage: verify-equivalence.sh <before-metrics.txt> <after-metrics.txt>
set -euo pipefail

if [ "$#" -ne 2 ]; then
  printf 'usage: verify-equivalence.sh <before-metrics.txt> <after-metrics.txt>\n' >&2
  exit 1
fi

before="$1"
after="$2"

if [ ! -f "$before" ] || [ ! -f "$after" ]; then
  printf 'error: both before and after metric files must exist\n' >&2
  exit 1
fi

read_val() {
  local file="$1"
  local key="$2"
  grep -E "^${key}=" "$file" | head -n 1 | cut -d'=' -f2- || echo "0"
}

printf 'Metric\tBefore\tAfter\tDelta\n'
for key in total_files source_loc ts_any_occurrences todo_fixme_markers; do
  b="$(read_val "$before" "$key")"
  a="$(read_val "$after" "$key")"
  d=$((a - b))
  sign=""
  if [ "$d" -gt 0 ]; then
    sign="+"
  fi
  printf '%s\t%s\t%s\t%s%s\n' "$key" "$b" "$a" "$sign" "$d"
done
