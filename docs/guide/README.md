# The sleepynails guide

Sleepynails replaces the habit of copying your original prompt into a brand-new model and hoping the rewrite keeps everything that worked in production. Instead, you point the newer model at your existing repo and let it upgrade the codebase systematically under a frozen behavioral contract.

## Chapters

1. [Install and publish to GitHub](./01-install-and-publish.md). Put sleepynails on GitHub and install it anywhere with `npx skills add`.
2. [Running a generational upgrade](./02-running-an-upgrade.md). What happens from the moment you type `/sleepynails` to the final before-vs-after proof.
3. [Playbooks and principles](./03-playbooks-and-principles.md). How to steer narrow upgrades or run an overnight full revamp.

## The core rule

Give the newer model your repo and a clear contract boundary:

```text
/sleepynails revamp this entire project to your full capability. keep every existing route, api payload, and user workflow identical.
```

Sleepynails pins behavior first, audits every older-model shortcut, upgrades in verifiable waves, and proves zero regression before finishing.
