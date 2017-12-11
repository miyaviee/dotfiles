source ~/.vimrc.basic

source ~/.vimrc.plugged

source ~/.vimrc.color

source ~/.vimrc.indent

source ~/.vimrc.zenkaku

source ~/.vimrc.paste

source ~/.vimrc.window

source ~/.vimrc.ctrlp

source ~/.vimrc.easyalign

if has('nvim') || has('python3')
  source ~/.vimrc.deoplete
else
  source ~/.vimrc.neocomplete
  source ~/.vimrc.jedi
endif

source ~/.vimrc.snippet

source ~/.vimrc.anzu

source ~/.vimrc.expand

source ~/.vimrc.vim-go

source ~/.vimrc.ale

source ~/.vimrc.clever-f

source ~/.vimrc.textmanip

source ~/.vimrc.emmet

source ~/.vimrc.jsx

source ~/.vimrc.operator

source ~/.vimrc.commentary

source ~/.vimrc.terminal

source ~/.vimrc.tagbar

source ~/.vimrc.statusline
