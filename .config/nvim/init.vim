set autoindent
set backspace=indent,eol,start
set clipboard+=unnamed
set completeopt=menuone,noinsert
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos,mac
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set laststatus=0
set list
set listchars=tab:\|\ ,trail:_,extends:\
set matchtime=1
set mouse=h
set nobackup
set nocursorcolumn
set cursorline
set noerrorbells
set noshowmode
set noswapfile
set nowrapscan
set nowritebackup
set number
set shiftwidth=0
set shortmess+=c
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set softtabstop=-1
set splitbelow
set splitright
set synmaxcol=1000
set tabstop=4
set tagcase=match
set tags=.tags,vendor.tags
set updatetime=300
set visualbell t_vb=
set wildmode=list:longest
try
  set fillchars=eob:\ ,
  set inccommand=nosplit
  set pumblend=10
  set winblend=10
catch
  " not supported
endtry

lang en_US.UTF-8

let g:python3_host_prog = expand('~/neovim/bin/python')

nnoremap <silent> <C-]> g<C-]>

nnoremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR>

nnoremap <silent> q <Nop>
nnoremap <silent> Q <Nop>

" multi line continuous paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap H ^
nnoremap L g_

nnoremap <silent> x "_x

tnoremap <silent> <ESC> <C-\><C-n>

cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>

command! DeleteAnsi %s/\[[0-9;]*m//g

autocmd QuitPre * if empty(&buftype) | lclose | endif
autocmd WinEnter * if winnr('$') == 1 && &buftype == 'quickfix' | q | endif

augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

" plugin manage
call plug#begin()

" colorcheme
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'

" completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" auto close
Plug 'jiangmiao/auto-pairs'

" file explorer
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'

" util
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'thinca/vim-localrc'

" runner
Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'neomake/neomake'
Plug 'thinca/vim-quickrun'
Plug 'lambdalisue/vim-quickrun-neovim-job'

" git status
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

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
Plug 'posva/vim-vue', { 'for': 'vue' }

" syntax
Plug 'sheerun/vim-polyglot'
if has('nvim-0.9.2')
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdateSync' }
endif

call plug#end()

syntax enable
filetype plugin indent on

let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

runtime! _config/*.vim
