# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git brew yarn zsh-syntax-highlighting)

# Customize to your needs...
export PATH=/Users/ashleyconnor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin

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

# # awesome cd movements from zshkit
# setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
# DIRSTACKSIZE=5

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

source $ZSH/oh-my-zsh.sh

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

source '/Users/ashleyconnor/.zsh/iterm2.zsh'
# source ~/.bin/tmuxinator.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

source ~/.zsh/zsh-peco-history/zsh-peco-history.zsh
