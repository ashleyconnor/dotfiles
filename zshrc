# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Theme options
POWERLINE_NO_BLANK_LINE="false"
POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_DETECT_SSH="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git brew rails ruby)

# Customize to your needs...
export PATH=/Users/ashleyconnor/nvm/v0.8.9/bin:/Users/ashleyconnor/bin:/usr/local/sbin:/usr/local/bin:/usr/local/Cellar/php/5.3.10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin

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

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# chruby
if [[ -e /usr/local/share/chruby ]]; then
  # Load chruby
  source '/usr/local/share/chruby/chruby.sh'

  # Automatically switch rubies
  source '/usr/local/share/chruby/auto.sh'

  # Set a default ruby if a .ruby-version file exists in the home dir
  if [[ -f ~/.ruby-version ]]; then
    chruby $(cat ~/.ruby-version)
  fi
fi


# Postgres
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# VirtualEnv
source "/usr/local/bin/virtualenvwrapper.sh"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Node Package Manager
export PATH="/usr/local/share/npm/bin:$PATH"

# Editor
export EDITOR='subl -w'

# Homebrew fix
export PATH="$(brew --prefix)/bin:$PATH"

# Pyenv shizzle
eval "$(pyenv init -)"
export PYENV_ROOT=/usr/local/opt/pyenv

source $ZSH/oh-my-zsh.sh

# Docker
export DOCKER_HOST=tcp://192.168.59.103:2375