call plug#begin('~/.config/nvim/plugged')

" colorcheme
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'arcticicestudio/nord-vim'

" completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" snippet
Plug 'Shougo/neosnippet'
  Plug 'honza/vim-snippets'

" file explorer
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'

" util
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
  Plug 'maximbaz/lightline-ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'

" runner
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

" git status
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" extend search
Plug 'easymotion/vim-easymotion'

" terminal
Plug 'kassio/neoterm'

" extend visual mode
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" comment
Plug 'tpope/vim-commentary'

" async syntax check
Plug 'dense-analysis/ale'

" textobj
Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-indent'
  Plug 'kana/vim-textobj-entire'
  Plug 'rhysd/vim-textobj-anyblock'
  Plug 'sgur/vim-textobj-parameter'

" operator
Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'tyru/operator-camelize.vim'
  Plug 'tpope/vim-surround'
    Plug 'tpope/vim-ragtag'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

" html
Plug 'mattn/emmet-vim'

" syntax
Plug 'sheerun/vim-polyglot'

call plug#end()
