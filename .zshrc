source $ZPLUG_HOME/init.zsh

zplug 'zsh-users/zsh-completions'

zplug 'zsh-users/zsh-syntax-highlighting', defer:2

zplug 'zsh-users/zsh-autosuggestions', defer:2

zplug 'zsh-users/zsh-history-substring-search'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

zstyle ':completion:*:default' menu select=1

bindkey -e

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

fignore=('.pyc' '.sw?' '.6' '.8')

fpath+=($ZPLUG_HOME/repos/zsh-users/zsh-completions/src)

autoload -Uz promptinit; promptinit
prompt pure

autoload -Uz compinit; compinit

setopt auto_pushd

setopt pushd_ignore_dups

setopt hist_ignore_all_dups

setopt hist_ignore_space

setopt hist_reduce_blanks

setopt hist_no_store

setopt auto_list

setopt auto_menu

setopt print_eight_bit

setopt no_beep

setopt ignore_eof

setopt interactive_comments

setopt share_history

setopt nonomatch

unsetopt promptcr

alias vi=$EDITOR
