bindkey -e

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit; compinit

setopt auto_cd

setopt auto_pushd

setopt pushd_ignore_dups

setopt hist_ignore_all_dups

setopt hist_ignore_space

setopt auto_list

setopt auto_menu

eval "$(direnv hook zsh)"

alias vi=vim
