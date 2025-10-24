export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

zstyle ':omz:update' mode auto      # update automatically without asking

zstyle ':omz:update' frequency 30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# Here is where I put my homemade binaries
PATH=$PATH:~/.local/bin

alias bat="batcat"
alias kmon="sudo $(which kmon)"
alias netscanner="sudo $(which netscanner)"
alias sx="startx"

eval "$(zoxide init zsh)"
