" not plugged
source ~/.config/nvim/base.vim

" plugin manage
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/plugged.vim
call plug#end()

" ui
source ~/.config/nvim/general.vim

" language
source ~/.config/nvim/language.vim

" runner
source ~/.config/nvim/runner.vim

" textobj
source ~/.config/nvim/operator.vim
