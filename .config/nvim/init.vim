" plugin manage
call plug#begin('~/.config/nvim/plugged')

" colorcheme
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'

" completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'honza/vim-snippets'

" file explorer
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'
Plug 'yssl/QFEnter'
Plug 'lambdalisue/fern.vim'

" util
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'thinca/vim-localrc'
Plug 'junegunn/vim-peekaboo'

" runner
Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'thinca/vim-quickrun'
  Plug 'lambdalisue/vim-quickrun-neovim-job'

" git status
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" cursor
Plug 'easymotion/vim-easymotion'

" extend visual mode
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'

" comment
Plug 'tpope/vim-commentary'

" syntax/format
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'

" textobj
Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-indent'
  Plug 'rhysd/vim-textobj-anyblock'
Plug 'machakann/vim-swap'

" operator
Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'tpope/vim-surround'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

" python
Plug 'miyaviee/pytest-vim-compiler', { 'for': 'python' }

" html
Plug 'mattn/emmet-vim'

" vue
Plug 'posva/vim-vue'

" syntax
Plug 'sheerun/vim-polyglot'

call plug#end()

let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

runtime! _config/*.vim
