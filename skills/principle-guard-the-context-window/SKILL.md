---
name: principle-guard-the-context-window
description: "Apply when upgrading medium-to-large repositories. Route isolated subsystem audits and disjoint wave edits to fresh subagents and keep concise verified summaries in the main thread."
disable-model-invocation: true
---

# Guard the Context Window

Context bloat degrades model reasoning faster than anything else during a full-repo upgrade.

- Never dump entire repositories or raw logs into the main orchestrator context.
- Fan out subsystem audits and disjoint file-scope upgrade waves to fresh workers with explicit file pointers and pinned contract summaries.
- Require workers to return tight structured findings (changed files, commands run, measured deltas) rather than raw file listings.
