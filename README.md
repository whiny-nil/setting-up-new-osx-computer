# Setup New macOS Computer

## FIRST THINGS FIRST

- On your old computer, clone this repo
- Look at each of the files in the dotfiles/config folder and update them if they haven't been already
- PUSH TO ORIGIN
- copy some files to a USB stick or something, so you can move them to your new computer. Places to look:
  - dotfiles in your home directory, eg. .cursor, .zsh\*, etc.
    - note: copying .cursor takes _forever_
  - **GTD** folder
  - Documents folder
  - Pictures folder
  - sample files you use (PDFs, pictures etc)
  - scripts
- go through all of your work repos, make sure your work / branches are pushed
- think about all the stuff you use, including:
  - things installed via brew (check with `brew list` or `history | grep "brew install"`)
  - things installed globally via npm
  - things installed in /Applications
  - Rather than doing this by hand, dump everything to a single file you can copy to your USB stick (and hand to Claude/an agent later to help update this README):

    ```bash
    {
      echo "=== BREW LEAVES (top-level formulae) ==="; brew leaves 2>/dev/null
      echo; echo "=== BREW CASKS ==="; brew list --cask 2>/dev/null
      echo; echo "=== NPM GLOBALS ==="; npm ls -g --depth=0 2>/dev/null
      echo; echo "=== APPLICATIONS ==="; ls /Applications
    } > _inventory.txt
    ```

## Setting up your new computer

- if using LG Keyboard:
  - install LG Hub
  - Allow the app in Privacy & Security > Accessibility
  - in Keyboard > Keyboard shortcuts > Modifier keys, swap "Option" and "Command" keys
  - in LG Hub, select keyboard colour and "swap function" option
  - restart the computer (so that the keyboard is recognized by LG Hub and the colour is changed)

- Update Finder settings:
  - General: Uncheck everything
  - General > New Finder Windows show: marc.kelsey folder
  - Sidebar: Only check: Documents, marc.kelsey, Hard disks, External disks, CDs etc, Connected servers
  - Advanced > Show all filename extensions: Checked
  - Set Finder to always open in Column view:
    - Open a Finder window
    - Click on "Macintosh HD"
    - In one of the columns, right-click and choose "Show view options"
    - Check "Always open in Column view" and "Browse in column view"

- Create `~/__GTD__/__Inbox__` dir

- Download new browser (Firefox)
  - set as default in System Preferences > Desktop & Dock > Windows & Apps > Default web browser
  - Point Downloads to `~/__GTD__/__Inbox__` in Firefox settings
  - sync your Firefox account to update extensions, themes, etc

- Change some of the macOS System Settings:
  - Appearance > Accent color: Set to red or something
  - Battery > Options> Prevent automatic sleeping: Turn on
  - General > Software Update > Automatic updates: Turn off anything that auto-installs
  - Desktop & Dock > Desktop & Stage Manager: Change "Click wallpaper to reveal desktop" to "Only in Stage Manager"
  - Desktop & Dock > Desktop & Stage Manager: Make sure "Stage Manager" is off
  - Desktop & Dock > Dock: Set size to mid
  - Desktop & Dock > Dock: Magnification: Set to max
  - Desktop & Dock > Dock: Position on screen: Set to left or right
  - Desktop & Dock > Dock: Automatically hide: Turn on
  - Desktop & Dock > Mission Control > Automatically rearrange Spaces: Turn off
  - Desktop & Dock > Mission Control > Switch to space with open windows: Turn off
  - Desktop & Dock > Mission Control > Group windows by application: Turn off
  - Desktop & Dock > Mission Control > Displays have separate spaces: Turn off
  - Keyboard > Key repeat rate: Set to fastest
  - Keyboard > Delay until repeat: Set to shortest
  - Keyboard > Input Sources > Edit > Turn "Add period with double space" off
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+/ to "Zoom"
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+-> to "Move to <monitor on the right>" (see Window section in Menu Bar)
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+-> to "Move to <monitor on the left>" (see Window section in Menu Bar)
  - Mouse > Tracking speed: Increase to max
  - Mouse > Natural scrolling: Turn off
  - Mouse > Double-click speed: Increase
  - Mouse > Scrolling Speed: Increase
  - Sound > Input: Change to webcam mic
  - Sound > Play feedback when volume changed: Turnon
  - Trackpad > Scroll & Zoom > Natural scrolling: Turn off

- Turn off annoying "Text Insertion Point"
  - open terminal, then:

  ```bash
  sudo mkdir -p /Library/Preferences/FeatureFlags/Domain
  sudo /usr/libexec/PlistBuddy -c "Add 'redesigned_text_cursor:Enabled' bool false" /Library/Preferences/FeatureFlags/Domain/UIKit.plist
  ```

  - reboot

- Remove all the apps from the Dock

- Install homebrew
  - see https://brew.sh/

- Install raycast (Alfred alternative)
  - `brew install raycast`
  - during setup, set "ctrl-space" as the hotkey
  - have it replace Spotlight
  - use dark mode
  - on old computer, go into Raycast and "export" settings etc
  - import into new computer

- Download and install FantasqueSansM Nerd Font (https://www.nerdfonts.com/font-downloads)

- install cmux
  - open Ghostty settings, add font-family = FantasqueSansM, font-size = 18
  - or, copy from ~/.config/ghostty/config

- Install commandline tools
  - just try running `git` and it will ask you to install commandline tools

- Configure git (or copy from ~/.gitconfig, .gitignore_global)
  - `git config --global user.name "Your Name"`
  - `git config --global user.email you@example.com`
  - `git config --global merge.conflictstyle diff3`

- Install oh-my-zsh
  - see https://github.com/robbyrussell/oh-my-zsh

- Create ~/code dir

- Generate ssh key
  - https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

- Add key to github, bitbucket
  - For TN, need to configure SSO as well (after adding to GH, there is a button on the right of the key)

- DEPRECATED??: Install custom zsh-theme
  - need to install it or oh-my-zsh goes nuts, but I think the prompt is overwritten by starship anyway
  - look in dotfiles directory

- Install my custom .zshrc
  - look in dotfiles directory

- `brew install` some stuff:
  - starship (copy config from dotfiles directory into ~/.config/starship.toml)
  - tree
  - mise
  - tldr (https://tldr.sh/)
  - thefuck
  - neovim (I really should configure it at some point...)
  - kdiff3
  - noTunes (then set to "Open at Login" in System Settings)
  - gh (GitHub CLI — after install, run `gh auth login`)
  - git-machete (manage stacks of branches)
  - ripgrep (fast recursive search, `rg`)
    - copy `dotfiles/ripgreprc` to `~/.ripgreprc`
    - it's activated by the `RIPGREP_CONFIG_PATH` env var (already set in `~/.zshrc`):

      ```bash
      export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
      ```

      current contents (`dotfiles/ripgreprc`):

      ```
      --no-ignore
      --hidden
      --glob=!.git/
      ```

- set up locate db
  - `sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist`

- install Cursor, set it up
  - copy over .cursor from old computer
  - copy over ~/Library/Application Support/Cursor/User/ from old computer
  - go through and fix the extensions
  - change the layout to "Editor" (gear top right)
  - install the `cursor` command for the terminal
  - add "FantasqueSansM Nerd Font" as the font
  - set the font size to something appropriate

- Install Obsidian, set it up
  - create new vault called "obsidian" in `~/code/github.com/whiny-nil`
  - install Obsidian Git plugin
  - exit obsidian
  - delete this folder
  - git clone git@github.com:whiny-nil/obsidian.git
  - open Obsidian, it should work

- Install Zed (secondary editor)
  - `brew install --cask zed`
  - install the `zed` command for the terminal
  - set font to "FantasqueSansM Nerd Font"

- Change where screenshots are saved
  - `defaults write com.apple.screencapture location /Users/marc/__GTD__/__Inbox__`

- Set up desktops
  - cmd-up to show all the windows, then click on + button on the right side
  - Keyboard > Shortcuts > Mission Control: Expand "Mission Control" item in list, check the options to move between spaces with ctrl-1, etc
  - add some backgrounds

## Agentic coding

- Install the Claude desktop app
  - `brew install --cask claude`
  - sign in

- `brew install` agentic coding helpers:
  - herdr (helps with agentic coding)
  - hunk (helps with agentic coding)

- Wire up the shared agent config (the `ai` repo)
  - all my agent config lives in one repo: `~/code/github.com/whiny-nil/ai`
  - `~/.agents` is a symlink to that repo
  - each tool's agent dir is in turn symlinked to `~/.agents` (or a subdir of it), so every agent shares the same skills/config from the `ai` repo. For example:

    ```bash
    # the ai repo is the single source of truth
    ln -s ~/code/github.com/whiny-nil/ai ~/.agents

    # then point each agent's config dir at ~/.agents, e.g.:
    # ln -s ~/.agents ~/.claude
    # ln -s ~/.agents/skills ~/.config/<agent>/skills
    ```

    <!-- TODO: confirm the exact per-agent symlink targets on the current machine -->
  - after cloning `ai` and recreating the symlinks, every agent (Claude, Cursor, etc.) picks up the shared skills/config automatically

## For Me:

- install eqMac, set to run on Login
- install Spotify

## For TextNow:

- more git configs:
  - add file `~/.gitignore_global`
    - add contents of file:

    ```
    *~
    .DS_Store
    ```

    - git config --global core.excludesfile "/Users/marc.kelsey/.gitignore_global"

  - git config --global init.defaultbranch main
  - git config --global pull.rebase false

- run OneDrive to set up

- go to outlook.office.com/mail, pin it
- go to outlook.office.com/calendar, pin it

- install some apps, as you need them:
  - Docker Desktop — `brew install --cask docker-desktop` (installs Docker.app)
  - Linear.app
  - LibreOffice.app
  - VirtualBox.app
  - draw.io.app
  - yEd.app
  - Slack.app
  - Zoom.app

- run Slack to set up

- run /zoom in Slack to set up
  - make sure to "Share Screen" before you do a real meeting, since it requires turning on Permissions and restarting Zoom

- `brew install` some things, as you need them:

- postgresql
  - http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/

- pspg (a decent pager for postgres)
  - https://github.com/okbob/pspg
  - configure it with a good colour scheme!

- pgadmin
- protobuf (needed for working with protobufs in various repos)
- shfmt (needed for `textnow-ci`)
- minikube, kustomize, argocd (needed for working with k8s stuff)
