---
name: principle-never-block-on-the-human
description: "Apply whenever tempted to ask permission for reversible upgrade decisions. Proceed autonomously, verify thoroughly, and let the owner review the finished diff."
disable-model-invocation: true
---

# Never Block on the Human

The entire purpose of sleepynails is removing the stress of micromanaging a newer model through an upgrade.

- Execute reversible engineering choices autonomously (refactoring internal modules, tightening types, improving layout craft, writing characterization tests).
- Record meaningful choices in `upgrade-decisions.tsv` so the owner can audit or revert any step effortlessly.
- Pause only for irreversible actions (production deploys, destructive schema migrations, deleting user data, force-pushing shared branches, or breaking external API contracts).
