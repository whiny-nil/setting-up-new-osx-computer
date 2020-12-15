Setup New macOS Computer
========================

* Change Dock
	- move it to the side
	- remove all the apps
	- change icon size and magnification

* Change trackpad scroll direction

* Map "Caps Lock" key to "Escape" if computer doesn't have one
	- System Preferences -> Keyboard -> Modifier Keys... 

* Download new browser (Firefox)
	- Install LastPass extension
	- Install uBlock Origin

* Download Alfred

* Download iTerm2
	- use Solarized Dark colours
	- change the highlight colour (see images)
  - also, change the "Black" colour to something like blue (so black text shows up)

* Create ~/__GTD__/__Inbox__ dir

* Point Downloads to __Inbox__

* Change Finder to always open in column view

* Update apps, macOS

* Install commandline tools
	- just try running `git` and it will ask you to install commandline tools

* Install oh-my-zsh
	- see https://github.com/robbyrussell/oh-my-zsh

* Install homebrew
	- see https://brew.sh/

* Install neovim
	`brew install neovim`

* Add keyboard shortcut for zooming app
	- System Preferences -> Keyboard -> Shortcuts -> App Shortcuts -> +

* Create ~/code dir

* Generate ssh key
	- https://docs.joyent.com/public-cloud/getting-started/ssh-keys/generating-an-ssh-key-manually/manually-generating-your-ssh-key-in-mac-os-x

* Add key to github, bitbucket

* Install custom zsh-theme

* Install my custom .zshrc
	- both of these could use some attention, but they are good enough for now

* Install VSCode, set it up (see other doc in this repo for that)

* Install Tomighty
  - http://tomighty.org/ or
  - https://www.macupdate.com/app/mac/49635/tomighty#<Paste>

* Change tab in TextEdit
	- `defaults write com.apple.TextEdit "TabWidth" '2'`

* Configure neovim at some point

* Change where screenshots are saved
	- `defaults write com.apple.screencapture location /Users/marc/__GTD__/__Inbox__`

* add a "mkpw" alias to zshrc
  - `alias mkpw="openssl rand -base64 14" # make a password`

* configure git to use three-way diff
  - `git config --global merge.conflictstyle diff3`

* install tldr
  - https://tldr.sh/

* install thefuck
  - `brew install thefuck`

* set up locate db
  - `sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist`

* Install rbenv (optional)
	- brew install rbenv
	- rbenv init

* Install nvm (optional)
	- https://github.com/creationix/nvm
	- make sure it runs `nvm use` automatically: https://github.com/nvm-sh/nvm#zsh

* Install yarn (optional)
	- brew install yarn

* Install postgres (optional)
	- brew install postgresql
	- http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/

* Install a decent pager for postgres (optional)
  - https://github.com/okbob/pspg
  - configure it with a good colour scheme!

* Install pgadmin (optional)

* Install Slack app (optional)
