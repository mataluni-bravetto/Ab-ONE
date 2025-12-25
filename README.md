# ZERO STATE ETERNAL — AbëONE

A minimal, reproducible development layout that prevents drift and keeps source as the single truth.

## Quick overview

- Source: `~/AbëONE/` (everything under this folder is the single source of truth).
- Derived state: `node_modules/`, `.abe/state/`, `design/exports/` (can be deleted and regenerated).
- One command: `abe-dev` — cleans derived state, regenerates from source, and opens VS Code.

## Quick start

```bash
# Start development environment
abe-dev

# Validate structure and zero state
cd ~/AbëONE && npm run validate
```

## Files & Key Behavior

- `design/tokens/consciousness.tokens.json` — canonical design tokens.
- `.gitignore` — excludes derived state.
- `.git/hooks/pre-commit` — enforces: no derived-state commits, tokens must exist.
- `package.json` — scripts: `dev`, `build`, `tokens:build`, `tokens:watch`, `validate`.

## VS Code performance troubleshooting ⚠️

If VS Code feels laggy (common on large workspaces):

1. Launch without extensions: `code --disable-extensions` — fast path to isolate extension issues.
2. Use Command Palette → **Developer: Show Running Extensions** to identify heavy extensions.
3. Add more excludes/watcher-excludes in `.vscode/settings.json`:

```json
"files.watcherExclude": {
  "**/node_modules/**": true,
  "**/.git/**": true
}
```

4. Open only the `~/AbëONE` folder (not a huge parent folder).
5. Try a clean profile: `code --user-data-dir <tmpdir>` to rule out corrupted local state.
6. Check DevTools: Help → Toggle Developer Tools for errors.

## Extension recommendations

- continue.continue
- dbaeumer.vscode-eslint
- esbenp.prettier-vscode
- eamodio.gitlens

## Notes & philosophy

- Delete derived files anytime; regenerate with `abe-dev` or `npm install`.
- Commit only source; pre-commit hook will enforce this.

---

If you'd like, I can add a short CONTRIBUTING.md or expand troubleshooting items with exact steps for profiling and flame graphs. ❤️
