### Performance Overhaul

**You own measured speed and efficiency. Every optimization must prove a real speedup beyond noise while keeping outputs byte-for-byte or behaviorally identical.**

Use when an older model shipped working code that suffers from slow queries, bloated bundles, unnecessary re-renders, blocking I/O, or high memory usage.

1. Pin output equivalence first via **contract-pin** (**principle-pin-before-you-touch**). Build or run a deterministic check verifying that outputs before and after optimization match exactly.
2. Build a repeatable benchmark harness on a realistic workload and freeze it before editing code (**principle-prove-equivalence-and-gain**). Sample multiple runs (median of N, never one cold run) and record baseline latency, throughput, memory, query count, or bundle size.
3. Profile to find the true limiter via **ceiling-audit**. Rank real bottlenecks in order of leverage.
   - Eliminate unnecessary work and redundant network/DB round-trips (N+1 queries, waterfall fetches, duplicate parsing).
   - Fix algorithmic complexity and oversized payloads (full-table scans, O(n^2) loops, unindexed lookups, shipping megabytes of client JS).
   - Optimize hot rendering, caching, streaming, and concurrency boundaries.
4. Open `upgrade-decisions.tsv` via **upgrade-trail** and iterate one hypothesis per wave (**principle-sequence-verifiable-waves**). For each hypothesis, implement the smallest clean change, re-measure with the frozen harness, and re-run the equivalence pin. Keep only changes that move the metric past noise and preserve 100% behavior. Revert speculative micro-optimizations that add complexity without measured gain.
5. Check **upgrade-blast-radius** for caching staleness, concurrency races, or memory retention introduced by optimizations.
6. Run **upgrade-interrogate** to try to break edge cases under load or cold cache.

**Reply:** workload profiled, frozen benchmark command, before-vs-after median numbers with percent delta, accepted optimizations, reverted attempts, and equivalence proof.
