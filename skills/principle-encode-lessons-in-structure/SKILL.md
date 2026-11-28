---
name: principle-encode-lessons-in-structure
description: "Apply whenever a generational upgrade fixes a recurring fragility left by an older model. Encode the guard in types, lint rules, schemas, or automated tests instead of prose."
disable-model-invocation: true
---

# Encode Lessons in Structure

Text warnings decay. Automated constraints endure across future sessions and future models.

- Turn discovered type holes into stricter compiler flags or schema-derived types.
- Turn discovered runtime edge cases into fast behavior tests.
- Turn recurring style or boundary mistakes into lint rules or helper scripts.
- Leave the upgraded repository structurally harder to break than you found it.
