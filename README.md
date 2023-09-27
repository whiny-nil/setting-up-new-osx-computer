# Setup New macOS Computer

## FIRST THINGS FIRST

- On your old computer, clone this repo
- Look at each of the files in the config folder and update them if they haven't been already
- PUSH TO ORIGIN
- go through all of your work repos, make sure your work / branches are pushed
- think about all the stuff you use, including:
  - things installed via brew (check with `brew list` or `history | grep "brew install"`)
  - things installed in /Applications

## Setting up your new computer:

- if using LG Keyboard:

  - install LG Hub
  - Allow the app in Privacy & Security > Accessibility
  - in Keyboard > Keyboard shortcuts > Modifier keys, swap "Option" and "Command" keys
  - in LG Hub, select keyboard colour and "swap function" option

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

  - Software Update > Automatic updates: Turn off anything that auto-installs
  - Desktop & Dock > Dock: Set size to mid
  - Desktop & Dock > Dock: Magnification: Set to max
  - Desktop & Dock > Dock: Position on screen: Set to left or right
  - Desktop & Dock > Dock: Automatically hide: Turn on
  - Desktop & Dock > Mission Control > Automatically rearrange Spaces: Turn off
  - Desktop & Dock > Mission Control > Switch to space with open windows: Turn off
  - Desktop & Dock > Mission Control > Group windows by application: Turn off
  - Desktop & Dock > Mission Control > Displays have separate spaces: Turn off
  - Displays > Advanced> Prevent automatic sleeping: Turn on
  - Keyboard > Key repeat rate: Set to fastest
  - Keyboard > Delay until repeat: Set to shortest
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+/ to "Zoom"
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+-> to "Move to <monitor on the right>" (see Window section in Menu Bar)
  - Keyboard > Shortcuts > App Shortcuts: Map Ctrl+Alt+Command+-> to "Move to <monitor on the left>" (see Window section in Menu Bar)
  - Mouse > Tracking speed: Increase to max
  - Mouse > Natural scrolling: Turn off
  - Mouse > Double-click speed: Increase
  - Mouse > Scrolling Speed: Increase
  - Trackpad > Scroll & Zoom > Natural scrolling: Turn off

- Remove all the apps from the Dock

- Download Alfred

- Download and install FantasqueSansM Nerd Font (https://www.nerdfonts.com/font-downloads)

- Download iTerm2

  - install profile from dotfiles directory

- Install commandline tools

  - just try running `git` and it will ask you to install commandline tools

- Configure git

  - `git config --global user.name "Your Name"`
  - `git config --global user.email you@example.com`
  - `git config --global merge.conflictstyle diff3`

- Install oh-my-zsh

  - see https://github.com/robbyrussell/oh-my-zsh

- Create ~/code dir

- Generate ssh key

  - https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-mac-os-x

- Add key to github, bitbucket

- Install custom zsh-theme

  - look in dotfiles directory

- Install my custom .zshrc

  - look in dotfiles directory

- Install homebrew

  - see https://brew.sh/

- `brew install` some stuff:

  - starship (copy config from dotfiles directory)
  - tree
  - rtx
  - tldr (https://tldr.sh/)
  - thefuck
  - rg
  - neovim (I really should configure it at some point...)
  - meld (file diff)

- set up locate db

  - `sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist`

- Install VSCode, set it up

  - just need to sync it (https://code.visualstudio.com/docs/editor/settings-sync)
  - delete other file

- Install Obsidian, set it up

  - create new vault called "obsidian" in `~/code/github.com/whiny-nil`
  - install Obsidian Git plugin
  - exit obsidian
  - delete this folder
  - git clone git@github.com:whiny-nil/obsidian.git
  - open Obsidian, it should work

- Change where screenshots are saved

  - `defaults write com.apple.screencapture location /Users/marc/__GTD__/__Inbox__`

- Install some apps:
  - lghub.app
  - noTunes.app (set to start on login)

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

- Set up `withokta`

  - https://textnow.atlassian.net/wiki/spaces/SRE/pages/13154845410/Okta+SSO+withokta

- run OneDrive to set up

- go to outlook.office.com/mail
- go to outlook.office.com/calendar

- run Slack to set up

- run /zoom in Slack to set up

  - make sure to "Share Screen" before you do a real meeting, since it requires turning on Permissions and restarting Zoom

- install some apps, as you need them:

  - Docker.app
  - LibreOffice.app
  - VirtualBox.app
  - draw.io.app
  - yEd.app
  - Slack.app
  - Zoom.app

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
