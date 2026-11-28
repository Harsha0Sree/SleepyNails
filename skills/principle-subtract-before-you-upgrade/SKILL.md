---
name: principle-subtract-before-you-upgrade
description: "Apply at the start of every upgrade wave. Delete dead code, unused packages, redundant validators, and older-model shims before introducing new structure."
disable-model-invocation: true
---

# Subtract Before You Upgrade

Older models leave unused helpers, fallback wrappers, commented-out trials, and speculative abstractions behind. Remove them first so you upgrade a lean core.

- Delete unused files, dead exports, redundant dependencies, and unreachable branches in a dedicated subtraction wave.
- Collapse single-caller pass-through wrappers that hide nothing.
- Verify the pinned contract stays green after subtraction before introducing any new modules.
