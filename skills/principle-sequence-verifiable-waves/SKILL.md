---
name: principle-sequence-verifiable-waves
description: "Apply when planning and delivering a multi-file upgrade. Break work into small ordered waves where every wave passes verification before the next begins."
disable-model-invocation: true
---

# Sequence Verifiable Waves

Never rewrite an entire repository in one unverified megadiff.

- Order waves cleanly (contract pin -> dead-code subtraction -> domain & type core -> runtime & performance -> UX craft -> unslop & interrogation).
- Each wave must end with a green build, lint, and pinned contract check before the next wave begins.
- Commit each verified wave separately so any regression is trivially bisectable and reviewable.
