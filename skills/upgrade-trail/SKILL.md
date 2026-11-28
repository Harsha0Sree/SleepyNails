---
name: upgrade-trail
description: Maintain an append-only TSV decision trail (upgrade-decisions.tsv) for generational codebase upgrades. Records every wave, architectural choice, measurement, revert, and verification pointer so the project owner can audit the entire revamp in minutes. Use for /upgrade-trail.
disable-model-invocation: true
---

# Upgrade trail

Keep one canonical append-only decision log so the owner can audit an entire generational upgrade without reading every commit diff blind.

## Format

Use a single TSV file (`upgrade-decisions.tsv` in the working directory or `.sleepynails/upgrade-decisions.tsv`). Copy `references/decision-log-template.tsv` for the header row. Cells stay single-line. Evidence is always a pointer, never a paragraph.

Columns:

- `ts` -> ISO8601 UTC timestamp.
- `wave` -> Upgrade phase or wave slug (`baseline`, `pin`, `audit`, `wave-1-subtract`, `wave-2-types`, `interrogate`, etc.).
- `decision` -> Concrete change or choice made, one line.
- `why` -> Plain-language reason.
- `evidence` -> Verifiable pointer (commit SHA, `file:line`, script path, metric diff, or test command).
- `result` -> Observed gate outcome (`tests green`, `reverted`, `loc -420`, `0 findings`, `blocked`).

## Logging a row

Invoke the bundled helper script to stamp timestamps and sanitize tabs, newlines, and spreadsheet formula prefixes (`=`, `+`, `-`, `@`):

```bash
bash scripts/log.sh upgrade-decisions.tsv <wave> <decision> <why> <evidence> <result>
```

Log meaningful checkpoints (baseline captured, contract pinned, architecture chosen, wave landed, wave reverted, interrogation finding fixed). Skip trivial file edits.

## Rules

- Append-only. Never edit or delete earlier rows. If a later wave supersedes or reverts an earlier choice, append a new row recording the revert and trigger.
- Audit the log before finishing. Verify every row maps to a real action and every evidence pointer resolves. If a row overstated a result, append a correction row.
- End your final upgrade reply with an **Attention** section flagging any decision with thin evidence, any pre-existing bug left untouched, or any risk worth human review.
