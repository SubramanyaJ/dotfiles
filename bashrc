# Uncomment the stuff here as needed.

# Start the window manager
# if [[ -z "$TMUX" && -z "$DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
#        startx
# fi

# If not running interactively, don't do anything
# For shell scripts, this causes return
# at failure point
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

eval "$(zoxide init bash)"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Always install fzf from the installer script.
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Get git status
if [ -f /usr/lib/git-core/git-sh-prompt ]; then
        source /usr/lib/git-core/git-sh-prompt
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1

# Prompt style
LASTEXIT=0
PROMPT_COMMAND='LASTEXIT=$?'
PS1='[ \w ]$(__git_ps1 "[ %s ]")[ $LASTEXIT ] '

# Cursor style
printf '\e]12;rgb:80/80/80\a'

# Enable autocomplete
shopt -s progcomp
# update the values of LINES and COLUMNS after each command
shopt -s checkwinsize
# Set vi mode : Commented out for safety of any unsuspecting user.
# set -o vi

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='vim'
alias bat="batcat"
alias sx="startx"
alias xclip="xclip -selection clipboard"

alias aptin="apt-cache pkgnames | fzf --multi --cycle --reverse --preview \"apt-cache show {1}\" --preview-window=:57%:wrap:hidden --bind=space:toggle-preview | xargs -ro sudo apt install"

export PAGER='less'
export EDITOR='vim'
