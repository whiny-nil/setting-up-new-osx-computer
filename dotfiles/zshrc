# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="marc"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(bundler git git-flow pow rails emoji)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/marc/Utils"

# go stuff
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="/Users/marc/Projects/go"
export PATH="$PATH:$GOPATH/bin"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# something nice
MOTD=`fortune -a wisdom | fmt`
echo "$fg[blue]$MOTD$reset_color"

# make sure rbenv knows where to find stuff
eval "$(rbenv init -)"
# same for pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# nvm
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc

# jenv
# To enable shims and autocompletion add to your profile:
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

 #nvim
alias vi="nvim"

#alias vi_time="nvim -O ~/__GTD__/To\ Do/personal.txt ~/__GTD__/To\ Do/work.txt ~/__GTD__/Projects/Me-Pomodoro/`date "+%Y"`-`date "+%m"`-`date "+%d"`.time.txt"
#alias vi_time="nvim -O ~/__GTD__/To\ Do/personal.txt ~/__GTD__/To\ Do/work.txt"
#function vi_time {
#  # nvim -O ~/__GTD__/To\ Do/personal.txt ~/__GTD__/To\ Do/work.txt
#  nvim -O ~/__GTD__/To\ Do/personal.txt ~/__GTD__/To\ Do/work.txt ~/__GTD__/Projects/Me-Pomodoro/`date "+%Y"`-`date "+%m"`.time.txt
#}

# android stuff, installed for react-native
export ANDROID_HOME=/usr/local/opt/android-sdk

# fucking postgres....
# these are the "real" way to do it
# alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
# alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# these are the homebrew / OSX way of doing it
alias pg_start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql91.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql91.plist"
alias pg_fix="pg_stop;rm /usr/local/var/postgres/postmaster.pid;pg_start"
alias pg_wtf="tail -n 20 /usr/local/var/postgres/server.log"

# alias to useful search commands
export GREP_COLOR=31
alias gr="grep -I -n -r --colour" # ignore binary files, show line numbers, search recursively, colour results

alias mkpwd="openssl rand -base64 6"

# helpers
alias cd_btc="cd ~/Sites/rails/2.3.5/brucetrail"
alias cd_c="cd ~/code/bitbucket.org/factore"
alias cd_cc="cd ~/code/bitbucket.org/factore/canchild"
alias cd_ev="cd ~/Sites/rails/4.0/expressingvibrancy"
alias cd_fmpe="cd ~/code/bitbucket.org/bradschell/fmpe"
alias cd_gdi="cd ~/Sites/rails/4.1/gamedayinsurance"
alias cd_hf="cd ~/Sites/rails/3.2/homefinder/homefinder-rails-3"
alias cd_hf_etl="cd ~/Sites/rails/3.2/homefinder/homefinder_etl"
alias cd_i="cd ~/__GTD__/__Inbox__"
alias cd_msu="cd ~/Sites/rails/3.2/msumcmaster"
alias cd_oh="cd ~/code/bitbucket.org/factore/open-houses-dot-ca"
alias cd_pdi="cd ~/code/bitbucket.org/factore/pearsondunn"
alias cd_reids="cd ~/Sites/rails/4.0/reids"
alias cd_rs="cd ~/Sites/rails/4.1/regattasport"
alias cd_sue="cd ~/Sites/rails/4.2/sonic-unyon-events"
alias cd_sul="cd ~/Sites/rails/4.2/sonic-unyon-label"
alias cd_ta="cd ~/Projects/tradyo/tradyo-android"
alias cd_ti="cd ~/Projects/tradyo/tradyo-ios"
alias cd_tp="cd ~/Projects/tradyo/tradyo-api"
alias cd_y="cd ~/Sites/go/yconic"
alias cd_ywca="cd ~/Sites/rails/3.2/ywcah"
alias cd_win="cd ~/Sites/rails/2.3.18-lts/community-info"

alias git="noglob git"

# bundle
alias b="bundle"
alias bi="b install --path vendor --without linux"
alias bu="b update"
alias be="b exec"
alias br="be rails"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# rails
alias rc="rails console"
alias rg="rails generate"

# homefinder and librets
# alias hf_rm_rets="rm lib/tasks/rets*; rm lib/tasks/treb*;"
# alias hf_co_rets="git checkout lib/tasks/rets*; git checkout lib/tasks/treb*;"
# alias hf_migrate="hf_rm_rets; be rake db:migrate; hf_co_rets"

# homefinder and ssh
# alias sshhf3="ssh -ldeploy 98.129.79.17"
# alias sshhf4="ssh -ldeploy 98.129.79.22"
# alias sshhf-util="ssh -ldeploy 72.3.196.9"
# alias sshhf-db="ssh -ldeploy 72.3.196.12"

# site provisioner
# please provision thinger-com thinger.com
# alias please="ssh pleaser@162.243.200.173"

# yconic
# alias yconic_lasagna_live1='ssh -p22021 -i ~/.ssh/yconic/yconic_lasagna_live.pem root@ec2-54-85-65-9.compute-1.amazonaws.com'
# alias yconic_lasagna_live2='ssh -p22021 -i ~/.ssh/yconic/yconic_lasagna_live.pem root@ec2-54-85-249-103.compute-1.amazonaws.com'
# alias yconic_lasagna_live3='ssh -p22021 -i ~/.ssh/yconic/yconic_lasagna_live.pem root@ec2-54-88-2-253.compute-1.amazonaws.com'
# alias yconic_lasagna_alpha='ssh -p22021 -i ~/.ssh/yconic/yconic_lasagna_live.pem root@52.5.45.61'
#
# alias yconic_data_access='ssh -p22021 -i ~/.ssh/yconic/yconic_data_access.pem root@data.fullbacon.systems'
#
# alias yconic_kitchen='ssh -p22021 -i ~/.ssh/yconic/yconic_kitchen.pem root@54.208.225.253'
#
# alias yconic_staging1='ssh -p22021 -i ~/.ssh/yconic/yconic_staging.pem root@54.209.232.193'
# alias yconic_staging2='ssh -p22021 -i ~/.ssh/yconic/yconic_staging.pem root@ec2-54-86-153-211.compute-1.amazonaws.com'
#
# alias yconic_services_live1='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.86.132.2'
# alias yconic_services_live2='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.173.128.237'
# alias yconic_services_search_1='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.86.159.29'
# alias yconic_services_search_2='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.173.161.87'
# alias yconic_services_search_3='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.175.1.87'
# alias yconic_services_search_4='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@54.175.93.119'
# alias yconic_services_search_5='ssh -p22021 -i ~/.ssh/yconic/yconic_services_live.pem root@52.4.188.81'
# alias yconic_canada_live1='ssh -p22021 -i ~/.ssh/yconic/yconic_canada_lasagna_live.pem root@54.172.156.103'
# alias yconic_canada_live3='ssh -p22021 -i ~/.ssh/yconic/yconic_canada_lasagna_live.pem root@54.173.217.41'
# alias yconic_canada_live2='ssh -p22021 -i ~/.ssh/yconic/yconic_canada_lasagna_live.pem root@54.173.233.149'
# alias yconic_lasagna_live_mfs_staging='ssh -p22021 -i ~/.ssh/yconic/yconic_lasagna_live.pem root@54.208.127.228'
# alias yconic_url_shortener1='ssh -p22021 -i ~/.ssh/yconic/yconic_url_shortener.pem root@52.3.210.81'
# alias yconic_url_shortener2='ssh -p22021 -i ~/.ssh/yconic/yconic_url_shortener.pem root@54.164.169.73'
# alias yconic_url_shortener3='ssh -p22021 -i ~/.ssh/yconic/yconic_url_shortener.pem root@54.86.14.93'
# alias yconic_mail='ssh -p22021 -i ~/.ssh/yconic/yconic_mail.pem root@54.174.203.26'
# alias yconic_corporate1='ssh -p22021 -i ~/.ssh/yconic/yconic_corporate.pem root@54.152.119.53'
# alias yconic_corporate2='ssh -p22021 -i ~/.ssh/yconic/yconic_corporate.pem root@52.87.248.206'
#
# alias yconic_canada_tunnel='ssh -p22021 -i ~/.ssh/yconic/yconic_data_access.pem root@54.86.4.192 -L 8906:yconic-canada.cyli9kymc0h6.us-east-1.rds.amazonaws.com:3306'
# alias yconic_canada_mysql="mysql -u data_view -p'r3s!st4n53' -h 127.0.0.1 -P 8906 yconic_lasagna_canada"
# alias yconic_one_tunnel='ssh -p22021 -i ~/.ssh/yconic/yconic_data_access.pem root@54.86.4.192 -L 8905:yconic1.cyli9kymc0h6.us-east-1.rds.amazonaws.com:3306'
# alias yconic_one_mysql="mysql -u data_view -p'r3s!st4n53' -h 127.0.0.1 -P 8905 yconic_lasagna"
# alias yconic_kitchen_mysql="mysql -u data_view -p'r3s!st4n53' -h 127.0.0.1 -P 8905 lasagna_kitchen"
# alias yconic_toronto_dev='ssh -p31337 -i ~/.ssh/yconic/toronto_vpn.pem admin@69.77.183.54 -L 3389:w-adams.yconic.local:3389'
# end yconic

export NVM_DIR="/Users/marc/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "/Users/marc/.gvm/scripts/gvm" ]] && source "/Users/marc/.gvm/scripts/gvm"
