#!/usr/bin/env bash
# Capture a deterministic pre-upgrade or post-upgrade baseline snapshot for sleepynails.
# Usage: baseline-snapshot.sh <output-dir> [label]
set -euo pipefail

out_dir="${1:-.sleepynails/baseline}"
label="${2:-before}"
mkdir -p "$out_dir"

report="$out_dir/${label}-metrics.txt"
tree_file="$out_dir/${label}-files.txt"

ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
git_sha="none"
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git_sha="$(git rev-parse --short HEAD 2>/dev/null || echo 'uncommitted')"
fi

find . \
  -path './.git' -prune -o \
  -path './node_modules' -prune -o \
  -path './.next' -prune -o \
  -path './dist' -prune -o \
  -path './build' -prune -o \
  -path './.sleepynails' -prune -o \
  -path './coverage' -prune -o \
  -type f -print | sort > "$tree_file"

file_count="$(wc -l < "$tree_file" | tr -d ' ')"

code_lines=0
while IFS= read -r f; do
  case "$f" in
    *.ts|*.tsx|*.js|*.jsx|*.py|*.go|*.rs|*.java|*.kt|*.swift|*.rb|*.css|*.scss|*.html|*.sql)
      lines="$(wc -l < "$f" 2>/dev/null | tr -d ' ' || echo 0)"
      code_lines=$((code_lines + lines))
      ;;
  esac
done < "$tree_file"

any_count="$(grep -rnE ':\s*any\b|\bas\s+any\b' . \
  --exclude-dir=.git --exclude-dir=node_modules --exclude-dir=.next \
  --exclude-dir=dist --exclude-dir=build --exclude-dir=.sleepynails \
  --include='*.ts' --include='*.tsx' 2>/dev/null | wc -l | tr -d ' ' || echo 0)"

todo_count="$(grep -rnE '\b(TODO|FIXME|HACK|XXX)\b' . \
  --exclude-dir=.git --exclude-dir=node_modules --exclude-dir=.next \
  --exclude-dir=dist --exclude-dir=build --exclude-dir=.sleepynails \
  2>/dev/null | wc -l | tr -d ' ' || echo 0)"

{
  printf 'timestamp=%s\n' "$ts"
  printf 'label=%s\n' "$label"
  printf 'git_sha=%s\n' "$git_sha"
  printf 'total_files=%s\n' "$file_count"
  printf 'source_loc=%s\n' "$code_lines"
  printf 'ts_any_occurrences=%s\n' "$any_count"
  printf 'todo_fixme_markers=%s\n' "$todo_count"
} > "$report"

printf 'Saved %s baseline to %s (%s files, %s source LOC, %s any, %s TODO/FIXME)\n' \
  "$label" "$report" "$file_count" "$code_lines" "$any_count" "$todo_count"
