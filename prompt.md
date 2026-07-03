# Prompt: keep this README in sync with my machine

Use this prompt with Claude (Cowork) or another agent to refresh the setup guide
whenever my installed software has drifted from what's documented.

---

## Setup the agent needs

- Connect the folder for this repo (`setting-up-new-osx-computer`) so the agent
  can read and edit `README.md`.
- The agent's shell is sandboxed and **cannot** run `brew` / `npm` / `ls` against
  my Mac, and it can only read files inside the connected folder. So I have to
  hand it the inventory (see below).

## Steps

1. Generate a fresh inventory into this repo folder, then tell the agent it's ready:

   ```bash
   cd ~/code/github.com/whiny-nil/setting-up-new-osx-computer
   {
     echo "=== BREW LEAVES (top-level formulae) ==="; brew leaves 2>/dev/null
     echo; echo "=== BREW CASKS ==="; brew list --cask 2>/dev/null
     echo; echo "=== NPM GLOBALS ==="; npm ls -g --depth=0 2>/dev/null
     echo; echo "=== APPLICATIONS ==="; ls /Applications
   } > _inventory.txt
   ```

2. Ask the agent to:
   - Read `README.md` to understand the current setup process.
   - Read `_inventory.txt` for what's actually installed (brew formulae, casks,
     global npm packages, `/Applications`).
   - Compare the two and produce a categorized list of gaps:
     - **Installed but undocumented** — things I rely on that a fresh setup would
       miss. Split into personal/general vs. work (TextNow).
     - **Documented but not installed** — correctly staged as "install as needed",
       leave alone unless I say otherwise.
     - **IT/MDM-managed apps** (Cisco, Falcon/CrowdStrike, Jamf Connect, Self
       Service, etc.) — note but don't document; they auto-install.
   - Let me pare the list down before editing — I add things ad hoc and don't want
     everything folded in.

3. Once I confirm what to keep, have the agent edit `README.md`:
   - Add brew formulae to the appropriate `brew install` block (main vs. "For TextNow").
   - Add casks/apps as `brew install --cask <name>` where possible.
   - Preserve the existing section structure and prose style (bulleted checklist).
   - Capture any tool-specific config the way it's actually set now (e.g. ripgrep's
     `~/.ripgreprc` + `RIPGREP_CONFIG_PATH`). If the agent can't see the real config
     file, it should leave a clearly marked `<!-- TODO -->` and ask me for it.

## Syncing dotfiles into the repo

I also keep copies of my real dotfiles in `dotfiles/` and `dotfiles/config/`, with the
leading `.` stripped so they're visible (e.g. `~/.zshrc` → `dotfiles/zshrc`,
`~/.config/starship.toml` → `dotfiles/config/starship.toml`). Some have a `-work`
suffix for the work-machine variant (e.g. `zshrc-work`, `starship.toml-work`).

The agent can't mount my home directory (`~`, `~/.config`, etc. are all blocked by the
folder guard, and single files can't be mounted). So stage the candidates into the repo
where the agent *can* read them:

```bash
cd ~/code/github.com/whiny-nil/setting-up-new-osx-computer
mkdir -p _incoming/config
{ echo "=== ~ dotfiles ==="; ls -lad ~/.* 2>/dev/null
  echo; echo "=== ~/.config ==="; ls -la ~/.config 2>/dev/null
  echo; echo "=== oh-my-zsh custom ==="; find ~/.oh-my-zsh/custom -maxdepth 3 -name '*.zsh*' 2>/dev/null
} > _incoming/_listing.txt
for f in .zshrc .zprofile .zshenv .gitconfig .gitconfig-textnow .gitignore_global .ripgreprc .rgignore; do
  cp "$HOME/$f" "_incoming/${f#.}" 2>/dev/null
done
cp ~/.config/starship.toml _incoming/config/starship.toml 2>/dev/null
cp -R ~/.config/ghostty _incoming/config/ghostty 2>/dev/null
ls -R _incoming
```

Then have the agent:
- Read `_incoming/_listing.txt` to spot anything README-relevant it should also ask me to stage.
- For each staged file, decide relevance against the README, and copy into `dotfiles/`
  or `dotfiles/config/` with the dot stripped.
- **Work vs. personal:** if a `-work` variant already exists and this is a work machine,
  update the `-work` variant rather than clobbering the plain-named (personal) file.
  Confirm the mapping (e.g. compare against an already-synced file like `starship.toml-work`).
- Skip secrets and machine-generated files (`.zsh_history`, `.zcompdump*`, `.ssh`, `.aws`,
  `.netrc*`, tokens, caches).
- Delete `_incoming/` when done (it's throwaway staging).

## Rules

- **Do not commit anything.** I'll review the diff and commit myself.
- Ask before restructuring sections; default to additive edits.
- Flag anything guessed or unverified with a `<!-- TODO -->` comment.
