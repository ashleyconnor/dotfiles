# Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source ~/.zsh_plugins

# Customize to your needs...
export PATH=/Users/ashleyconnor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin

# ASDF
. $HOME/.asdf/asdf.sh

# functions
source $HOME/.functions.sh

# completion
autoload -U compinit
compinit

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# Editor
export EDITOR='nvim'
alias vim=nvim
alias vi=nvim

# Homebrew fix
export PATH="$(brew --prefix)/bin:$PATH"

# Aliases
alias b='bundle exec'
# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'
alias diff=colordiff
alias get='git'
alias ls='ls -hFG'
alias l='ls'
alias la='ls -la'
alias ll='ls -l'
alias top='top -s 5 -o cpu -stats pid,user,command,cpu,rsize,vsize,threads,state'
alias dockup='eval "$(docker-machine env default)"'
alias clear="clear && printf '\e[3J'"
alias reset=clear && printf '[3J'
export PATH="/usr/local/share/dotnet:$PATH"
alias unzipall='for z in *.zip; do unzip -o $z; done'

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# dotenv
eval "$(direnv hook zsh)"

# Elixir prompt
export ERL_AFLAGS="-kernel shell_history enabled"

# Rust
export PATH=$PATH:/Users/ashleyconnor/.cargo/bin
