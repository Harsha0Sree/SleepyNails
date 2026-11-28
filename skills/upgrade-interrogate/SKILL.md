---
name: upgrade-interrogate
description: Adversarial verification pass after an upgrade. Tries to break the upgraded codebase against the pinned behavioral contract using real executable reproductions. Only findings proven by a real run survive. Use for /upgrade-interrogate.
disable-model-invocation: true
---

# Upgrade interrogate

An upgraded codebase that looks cleaner can still hide subtle regressions. Interrogate assumes the upgrade broke something and tries to prove it by running real code. Do not edit production files during interrogation. Report only proven findings.

## Scope and brief

Use the pinned contract (`.sleepynails/contract-pin.md`), the git diff from pre-upgrade base to HEAD, and the running application. If your harness supports subagents, spawn a read-only `contract-auditor` (or a second frontier model if available) with this brief.

> Break this upgrade. Prove every finding by executing a command, test, HTTP probe, or browser action against the real code showing where the upgraded build violates the pinned behavioral contract, crashes on an edge case, leaks an error, or regresses performance. Report each finding with title, exact command, observed output, and expected contract output. Exclude style preferences, naming opinions, and anything you did not prove by running code. Zero findings is a valid result.

## Verify every finding

Rerun every reported repro command yourself against the upgraded code.

- Keep findings where the command reproduces a real contract violation or bug.
- Drop findings that do not reproduce or reflect unpinned style preferences.
- Deduplicate findings that share a single root cause.

**Reply:** scope interrogated, verified findings (each with exact command, actual output, and contract violation) or `No verified findings`, and count of dropped claims with reasons.
