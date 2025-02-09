source ~/.zplug/init.zsh

zplug 'zsh-users/zsh-completions'

zplug 'zsh-users/zsh-syntax-highlighting', defer:2

zplug 'zsh-users/zsh-autosuggestions', defer:2

zplug 'zsh-users/zsh-history-substring-search'

zplug 'mafredri/zsh-async', from:github

zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme

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

fpath=(~/.zplug/repos/zsh-users/zsh-completions/src $fpath)
fpath=(${ASDF_DATA_DIR:-~/.asdf}/completions $fpath)

autoload -Uz compinit && compinit

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

source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" > /dev/null 2>&1 || echo 'need asdf direnv setup'

alias vi=$EDITOR
