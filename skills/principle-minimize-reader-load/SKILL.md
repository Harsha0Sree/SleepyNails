---
name: principle-minimize-reader-load
description: "Apply when shaping upgraded modules, components, and helpers. Ensure every upgraded file is easier to trace, understand, and modify than the older-model version."
disable-model-invocation: true
---

# Minimize Reader Load

Smarter models can sometimes over-abstract. Reader load is the guardrail against unnecessary cleverness.

- Count the files a human must jump across to answer a simple question about behavior.
- Collapse one-caller helpers, unnecessary factories, and bloated indirection layers.
- Shrink mutable state scope and prefer direct, obvious data flow.
- If an upgrade makes a file harder to read without fixing a real bug or bottleneck, revert it.
