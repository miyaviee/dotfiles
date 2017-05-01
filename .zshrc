PROMPT="%c %# "

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

setopt print_eight_bit

setopt no_beep

setopt ignore_eof

setopt interactive_comments

setopt share_history

eval "$(direnv hook zsh)"

alias vi=vim
