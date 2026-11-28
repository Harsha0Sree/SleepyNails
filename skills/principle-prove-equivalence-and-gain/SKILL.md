---
name: principle-prove-equivalence-and-gain
description: "Apply after every upgrade wave and before declaring completion. Verify both behavioral equivalence and concrete measured improvement on the real running artifact."
disable-model-invocation: true
---

# Prove Equivalence and Gain

An upgrade is complete only when two facts are proven on the real artifact.

1. **Equivalence.** Every pinned behavioral test, route, API payload, and user journey passes identically to the pre-upgrade baseline.
2. **Gain.** Concrete measured evidence shows the upgraded code is meaningfully better (lower latency, smaller bundle, fewer `any` holes, lower LOC/complexity, passing accessibility/responsive checks, or closed security holes).

Never trust code inspection alone. Run the build, run the tests, inspect the live app, and report exact commands and observed numbers.
