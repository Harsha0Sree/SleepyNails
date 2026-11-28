#!/usr/bin/env bash
# Append a sanitized row to a sleepynails upgrade-decisions.tsv log.
# Usage: log.sh <logfile> <wave> <decision> <why> <evidence> <result>
set -euo pipefail

if [ "$#" -ne 6 ]; then
  printf 'usage: log.sh <logfile> <wave> <decision> <why> <evidence> <result>\n' >&2
  exit 1
fi

logfile="$1"
shift

logdir="$(dirname "$logfile")"
if [ -n "$logdir" ] && [ "$logdir" != "." ] && [ ! -d "$logdir" ]; then
  mkdir -p "$logdir"
fi

if [ ! -s "$logfile" ]; then
  printf 'ts\twave\tdecision\twhy\tevidence\tresult\n' >> "$logfile"
fi

ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

clean() {
  local v
  v="$(printf '%s' "$1" | tr '\t\n\r' '   ')"
  case "$v" in
    =*|+*|-*|@*) printf "'%s" "$v" ;;
    *) printf '%s' "$v" ;;
  esac
}

printf '%s\t%s\t%s\t%s\t%s\t%s\n' \
  "$ts" "$(clean "$1")" "$(clean "$2")" "$(clean "$3")" "$(clean "$4")" "$(clean "$5")" \
  >> "$logfile"
