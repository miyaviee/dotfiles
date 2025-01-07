case $TERM in
  linux)
    export LANG=c
    export LC_ALL=C
    ;;
  *)
    export TERM=xterm-256color
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    ;;
esac

export EDITOR=nvim

export GOPATH=~/go

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

export GIT_MERGE_AUTOEDIT=no

export BAT_THEME=ansi-dark

export ASDF_GOLANG_MOD_VERSION_ENABLED=true
