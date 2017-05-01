source ~/.zplug/init.zsh

zplug 'zsh-users/zsh-completions'

zplug 'zsh-users/zsh-syntax-highlighting', defer:2

zplug 'zsh-users/zsh-autosuggestions'

zplug 'zsh-users/zsh-history-substring-search'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

PROMPT="%c %# "

bindkey -e

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

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
