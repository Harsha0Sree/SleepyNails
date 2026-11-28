# 01. Install and publish to GitHub

Sleepynails follows the open Agent Skills specification (`skills/<name>/SKILL.md` + `skills.sh.json`) and includes Cursor plugin manifests (`.cursor-plugin/plugin.json` and `plugin.json`). Because `npx skills add` uses GitHub directly as its registry, pushing this folder to a public GitHub repository makes it immediately installable with one command.

## Publish your copy to GitHub

1. Unzip `sleepynails.zip` and open a terminal inside the `sleepynails/` folder.
2. Create an empty public repository named `sleepynails` on GitHub.
3. Push the folder:

```bash
git init -b main
git add .
git commit -m "feat: initial release of sleepynails generational upgrade skill"
git remote add origin https://github.com/Harsha0Sree/sleepynails.git
git push -u origin main
```

## Install with `npx skills add`

Once pushed, anyone (including you on any machine) can install the full suite in seconds:

```bash
# Install all sleepynails skills into the current project
npx skills add Harsha0Sree/sleepynails

# Install globally for every project on your machine
npx skills add Harsha0Sree/sleepynails -g

# Install only the main orchestrator skill
npx skills add Harsha0Sree/sleepynails --skill sleepynails

# Target a specific agent (cursor, claude-code, codex, opencode, windsurf)
npx skills add Harsha0Sree/sleepynails --agent cursor
```

## Verify discovery locally before pushing

You can preview how the skills CLI discovers your package right from your machine:

```bash
npx skills add ./sleepynails --list
```

Every skill under `skills/*/SKILL.md` appears with its name and trigger description.
