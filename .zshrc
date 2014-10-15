#Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh

source ~/.zprezto/init.zsh

# aliases
source ~/.my_aliases.sh
source ~/.git_aliases.sh

# oh-my-zsh
plugins=(git brew lol pip sublime zsh-syntax-highlighting vi-mode)
ZSH_THEME="robbyrussell"

# vim
export EDITOR=vim
export VISUAL=$EDITOR

# Go path
GOPATH=~/go
export GOPATH

# PATH Variable
PATH=/bin
PATH=/usr/sbin:$PATH
PATH=/usr/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=$PATH:~/.vim
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/heroku/bin         # Added by the Heroku Toolbelt
PATH=$PATH:$GOPATH                       # Add go
# PATH=$PATH:/usr/local/opt/go/libexec/bin # Add go
PATH=$GOPATH/bin:$PATH                   # Add go executables
PATH=/usr/texbin:$PATH                   # Add tex
export PATH

# Docker (will find the IP if it is running)
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

# postgres
EXPORT export PGDATA=/usr/local/var/postgres/

# MOTD
cat /etc/motd

svim () {
    vim $(find . -name \*.$1 | peco)
}
