#! /bin/sh

export EDITOR=nvim || export EDITOR=vim
export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
set -gx PATH $HOME/.local/bin $PATH $NVM_DIR/nvm.sh $NVM_DIR/bash_completion

status --is-interactive; and source (rbenv init -|psub)

alias v=$EDITOR
alias df='df -h'
alias du='du -ch'

rvm default
