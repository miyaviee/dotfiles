call plug#begin('~/.config/nvim/plugged')

" colorcheme
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'arcticicestudio/nord-vim'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

" snippet
Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'

" file explorer
Plug 'Shougo/denite.nvim'

" util
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dhruvasagar/vim-table-mode'

" runner
Plug 'janko-m/vim-test'

" git status
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" extend search
Plug 'easymotion/vim-easymotion'

" terminal
Plug 'kassio/neoterm'

" autoclose
Plug 'cohama/lexima.vim'

" extend visual mode
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" comment
Plug 'tpope/vim-commentary'

" async syntax check
Plug 'w0rp/ale'

" textobj
Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-indent'
  Plug 'kana/vim-textobj-entire'
  Plug 'rhysd/vim-textobj-anyblock'

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