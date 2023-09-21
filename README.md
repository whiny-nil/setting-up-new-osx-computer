# Setup New macOS Computer

- Change trackpad scroll direction

- Change Dock

  - move it to the side
  - change icon size (smallish) and magnification (max)
  - have it hide automatically
  - remove all the apps

- Map "Caps Lock" key to "Escape" if computer doesn't have one

  - System Preferences -> Keyboard -> Modifier Keys...

- Make keys repeat better

  - Sys Pref, -> keyboard -> Key Repeat: Fastest, Delay: shortest

- Create `~/__GTD__/__Inbox__` dir

- Update Finder settings:

```
	- General: uncheck everything
					 : New Finder Windows show: marc.kelsey folder
	- Sidebar: Only check: Documents, marc.kelsey, Hard disks, External disks, CDs etc, Connected servers
	- Advanced > Show all filename extensions: Checked
	- always open in column view
```

- Download new browser (Firefox)

  - set as default in System Preferences -> General
  - Point Downloads to `~/__GTD__/__Inbox__` (FF settings)
  - sync your Firefox account

- Download Alfred

- Download and install FantasqueSansM Nerd Font (https://www.nerdfonts.com/font-downloads)

- Download iTerm2

  - install profile from dotfiles repo

  - Update Preferences:

  ```
  	- Appearance	> General > Theme: Minimal
  													> Status bar location: Bottom
  	- Profiles	> General	> Icon: Built-in Icon for Current App
  												> Working Directory: Reuse previous session's...
  							> Colors	> Color Presets...: Pastel (Dark Background)
  							> Text	> Cursor: Vertical Bar
  											> Blinking cursor: Checked
  											> Use built-in Powerline Glyphs: Checked
  											> Font: FantasqueSansM Nerd Font, Regular, 20, 102, 100
  							> Terminal 	> Scrollback buffer: Unlimited
  							> Session	> Status Bar Enabled: Checked
  												> Configure status Bar: Add "Search"
  	- Advanced 	> Mouse 	> Scroll wheels send arrows...: Yes
  							> Terminal 	> Prevent CSI...: No
  ```

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

  - in dotfiles repo, could move here?

- Install my custom .zshrc

  - in dotfiles repo, could move here?

  - both of these could use some attention, but they are good enough for now

- Install homebrew

  - see https://brew.sh/

- install starship (brew install starship)

  - copy config from dotfiles repo

- install rtx (brew install rtx)

- install tldr (brew install tldr)

  - https://tldr.sh/

- install thefuck

  - `brew install thefuck`

- set up locate db

  - `sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist`

- Install neovim
  `brew install neovim`

  - Configure neovim at some point

- Add keyboard shortcuts:

  - for zooming app: System Preferences -> Keyboard -> Shortcuts -> App Shortcuts -> +
  - for moving apps to second monitor

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

- install some apps, as you need them:

  - DiffMerge.app
  - Docker.app
  - LibreOffice.app
  - VirtualBox.app
  - draw.io.app
  - yEd.app

- withokta?

- run OneDrive to set up

- go to outlook.office.com/mail
- go to outlook.office.com/calendar

- run slack to set up

- run /zoom in slack to set up

- Install postgres (optional)

  - brew install postgresql
  - http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/

- Install a decent pager for postgres (optional)

  - https://github.com/okbob/pspg
  - configure it with a good colour scheme!

- Install pgadmin (optional)

🦑🦑🦑 : history | gr "brew install"
brew install pspg
brew install rbenv/tap/openssl@1.0
brew install v8@3.16.14.15
brew install v8@3.16
brew uninstall rbenv/tap/openssl@1.0
brew uninstall v8@3.15
brew install openssl
brew install mysql@5.7
brew install v8@3.15
brew install yarn
brew install shared-mime-info
brew uninstall postgres
brew install postgres
brew install --cask notunes
brew install awscli
brew install tree
brew install ack
brew install tldr
brew install swiftdefaultappsprefpane
brew install rg
brew install protobuf
brew install shfmt
brew install minikube
brew install gitk
brew install jdxcode/tap/rtx
brew install starship
brew install kustomize
brew install argoc

```

```

```


TODO:
	- export iTerm profile, add to this repo
```
