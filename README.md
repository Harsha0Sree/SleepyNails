# sleepynails

Frontier coding models leap forward every few weeks. A production app you built last month works, has real users, and carries dozens of quiet bug fixes, edge cases, and data contracts. Re-prompting the whole app from scratch in a newer model throws that stability away. Leaving it untouched leaves a full generation of engineering quality on the table.

**sleepynails upgrades existing codebases to a newer model's full capability without changing what your product does.**

Invoke `/sleepynails` inside any repo built with an older model. It pins your current behavioral contract first, audits every ceiling the older model hit, redesigns weak seams from first principles, executes the revamp in small verified waves, and proves both zero regression and measurable gain before handing back the diff.

## Install

### Using `skills` CLI (Cursor, Claude Code, Codex, OpenCode, Windsurf)

```bash
npx skills add Harsha0Sree/sleepynails
```

Install only the core orchestrator skill:

```bash
npx skills add Harsha0Sree/sleepynails --skill sleepynails
```

Install globally across all projects:

```bash
npx skills add Harsha0Sree/sleepynails -g
```

### In Cursor

Clone or install as a local/GitHub plugin, or add via `npx skills add Harsha0Sree/sleepynails --agent cursor`.

### In Claude Code

```bash
npx skills add Harsha0Sree/sleepynails --agent claude-code
```

See [docs/harness/adapters.md](./docs/harness/adapters.md) for cross-agent tool and subagent mappings.

## Quick start

Open your existing project with your newest frontier model and type:

```text
/sleepynails upgrade this codebase to your full capability without changing any existing functionality.
```

You do not need to tell the model which files to touch, which patterns to replace, or how to test it. `/sleepynails` automatically:

1. Runs [`/contract-pin`](./skills/contract-pin/SKILL.md) and [`scripts/baseline-snapshot.sh`](./skills/sleepynails/scripts/baseline-snapshot.sh) to lock down current routes, API shapes, storage schemas, UI flows, and baseline metrics.
2. Runs [`/ceiling-audit`](./skills/ceiling-audit/SKILL.md) to inventory every older-model compromise across architecture, types, performance, security, UX craft, and tests.
3. Matches a playbook from [`skills/sleepynails/playbooks/`](./skills/sleepynails/playbooks/) and copies every step into its live todo list.
4. Executes the upgrade in small, verifiable waves with [`/upgrade-architect`](./skills/upgrade-architect/SKILL.md), [`/unslop-code`](./skills/unslop-code/SKILL.md), and [`/upgrade-trail`](./skills/upgrade-trail/SKILL.md).
5. Proves zero regression via [`/upgrade-blast-radius`](./skills/upgrade-blast-radius/SKILL.md) and [`/upgrade-interrogate`](./skills/upgrade-interrogate/SKILL.md) before handing back a concise before-vs-after report.

Need help picking a scope before spending tokens? Run `/sleepynails-help`.

## Playbooks

| Playbook | When to use |
| --- | --- |
| [`full-revamp`](./skills/sleepynails/playbooks/full-revamp.md) | Complete generational upgrade of an entire repository under a frozen behavioral contract. Default when you invoke `/sleepynails`. |
| [`ui-craft-elevation`](./skills/sleepynails/playbooks/ui-craft-elevation.md) | Upgrade visual hierarchy, typography, responsiveness, accessibility, and motion craft without altering any existing workflow or control. |
| [`architecture-unification`](./skills/sleepynails/playbooks/architecture-unification.md) | Collapse older-model patchworks, God files, duplicated state, and loose types into a clean domain model. |
| [`performance-overhaul`](./skills/sleepynails/playbooks/performance-overhaul.md) | Profile real workloads and fix N+1 queries, render thrashing, bundle bloat, and redundant I/O with before/after proof. |
| [`hardening-and-security`](./skills/sleepynails/playbooks/hardening-and-security.md) | Close boundary validation holes, auth edge cases, silent error swallows, and race conditions left by older models. |
| [`test-and-contract-retrofit`](./skills/sleepynails/playbooks/test-and-contract-retrofit.md) | Add behavior-driven characterization tests to an under-tested production app so upgrades stay safe. |
| [`dependency-and-modernization`](./skills/sleepynails/playbooks/dependency-and-modernization.md) | Modernize stale framework idioms, deprecated APIs, and legacy boilerplate with zero breaking drift. |
| [`overnight-upgrade`](./skills/sleepynails/playbooks/overnight-upgrade.md) | Autonomous multi-wave revamp with isolated worktrees, `upgrade-decisions.tsv` logging, and adversarial review. |

## Supporting skills

| Skill | Role |
| --- | --- |
| [`/sleepynails`](./skills/sleepynails/SKILL.md) | Main orchestrator and playbook router. |
| [`/sleepynails-help`](./skills/sleepynails-help/SKILL.md) | Inspects your repo and gives you the sharpest prompt to run without starting edits yet. |
| [`/contract-pin`](./skills/contract-pin/SKILL.md) | Freezes observable behavior with characterization tests, snapshots, and boundary inventories before any edit. |
| [`/ceiling-audit`](./skills/ceiling-audit/SKILL.md) | Finds every quality, structural, performance, security, and craft ceiling left by an older model. |
| [`/upgrade-architect`](./skills/upgrade-architect/SKILL.md) | Designs two competing first-principles target shapes and picks the cleanest single-owner architecture. |
| [`/upgrade-blast-radius`](./skills/upgrade-blast-radius/SKILL.md) | Checks hidden compatibility seams (wire JSON, DB columns, storage keys, URLs, env vars) and proves safety by running code. |
| [`/upgrade-interrogate`](./skills/upgrade-interrogate/SKILL.md) | Spawns adversarial checks that try to break the upgraded build against the pinned contract. Only proven failures survive. |
| [`/unslop-code`](./skills/unslop-code/SKILL.md) | Strips older-model tells, filler comments, defensive try/catch swallows, redundant wrappers, and UI clichés. |
| [`/upgrade-trail`](./skills/upgrade-trail/SKILL.md) | Maintains an append-only TSV decision trail (`upgrade-decisions.tsv`) with evidence pointers for every wave. |

## Principles

Fifteen standalone leaf skills (`skills/principle-*/SKILL.md`) enforce disciplined generational upgrades instead of chaotic rewrites. See [docs/guide/03-playbooks-and-principles.md](./docs/guide/03-playbooks-and-principles.md) for the complete reference.

## Documentation

Read the full walkthrough in [docs/guide/README.md](./docs/guide/README.md).

## License

MIT
