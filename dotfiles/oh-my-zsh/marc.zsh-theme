# I don't think most of this works
# Replace This
CRUNCH_MACHINE_NAME="DJ Awesomehost"


CRUNCH_BRACKET_COLOR="%{$fg[white]%}"
CRUNCH_TIME_COLOR="%{$fg[yellow]%}"
CRUNCH_RVM_COLOR="%{$fg[magenta]%}"
CRUNCH_DIR_COLOR="%{$fg[cyan]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[green]%}"
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
#ZSH_THEME_GIT_PROMPT_PREFIX="$CRUNCH_BRACKET_COLOR:$CRUNCH_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_PREFIX="$CRUNCH_GIT_BRANCH_COLOR ("
ZSH_THEME_GIT_PROMPT_SUFFIX="$CRUNCH_GIT_BRANCH_COLOR)"
ZSH_THEME_GIT_PROMPT_CLEAN="$CRUNCH_GIT_CLEAN_COLOR"
ZSH_THEME_GIT_PROMPT_DIRTY="$CRUNCH_GIT_DIRTY_COLOR"

# Our elements:
ANIMAL=`random_emoji animals`
CRUNCH_TIME_="$CRUNCH_BRACKET_COLOR{$CRUNCH_TIME_COLOR%T$CRUNCH_BRACKET_COLOR}%{$reset_color%}"
if which rvm-prompt &> /dev/null; then
  CRUNCH_RVM_="$CRUNCH_BRACKET_COLOR"["$CRUNCH_RVM_COLOR\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}$CRUNCH_BRACKET_COLOR"]"%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    CRUNCH_RVM_="$CRUNCH_BRACKET_COLOR"["$CRUNCH_RVM_COLOR\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}$CRUNCH_BRACKET_COLOR"]"%{$reset_color%}"
  fi
fi
CRUNCH_DIR_="$CRUNCH_DIR_COLOR%~\$(git_prompt_info)"
CRUNCH_PROMPT="$CRUNCH_BRACKET_COLOR %{$fg[red]%}🐙🐙🐙 %{$reset_color%}: "

# Put it all together!
# PROMPT="$CRUNCH_GIT_DIRTY_COLOR|$CRUNCH_MACHINE_NAME|$CRUNCH_TIME_$CRUNCH_RVM_$CRUNCH_DIR_$CRUNCH_PROMPT%{$reset_color%}"
PROMPT="$CRUNCH_GIT_DIRTY_COLOR$CRUNCH_DIR_$CRUNCH_PROMPT%{$reset_color%}"

