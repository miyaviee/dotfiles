set autoindent
set backspace=indent,eol,start
set clipboard+=unnamed
set completeopt=menu,noinsert
set conceallevel=2 concealcursor=i
set cursorline
set expandtab
set fileencoding=utf-8
set fileformat=unix
set hidden
set ignorecase
set incsearch
set infercase
set laststatus=0
set list
set listchars=tab:\|\ ,trail:_,extends:\
set matchtime=1
set mouse-=a
set nobackup
set nocursorcolumn
set noerrorbells
set noshowmode
set noswapfile
set nowrapscan
set nowritebackup
set number
set shiftwidth=2
set shortmess+=c
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set splitbelow
set splitright
set synmaxcol=1000
set tabstop=4
set tagcase=match
set tags=.tags,vendor.tags
set updatetime=100
set visualbell t_vb=
set wildmode=longest,full

try
  set fillchars=eob:\ ,
  set inccommand=nosplit
catch
  " not supported
endtry

autocmd FileType * setlocal formatoptions-=ro

let g:python3_host_prog = expand('~/neovim/bin/python')

nnoremap <silent> <C-]> g<C-]>

nnoremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR>

nnoremap <silent> q <Nop>

" multi line continuous paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

noremap H ^
noremap L g_

tnoremap <silent> <ESC> <C-\><C-n>

command! DeleteAnsi %s/\[[0-9;]*m//g

" colorscheme
set termguicolors
set background=dark

try
  colorscheme gruvbox
catch
  " no colorscheme
endtry

syntax enable
filetype plugin indent on
