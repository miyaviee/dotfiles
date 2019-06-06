set fileformat=unix
set fileencoding=utf-8
set tabstop=2
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set number
set cursorline
set nocursorcolumn
set backspace=indent,eol,start
set wildmode=longest,full
set ignorecase
set smartcase
set infercase
set incsearch
set nowrapscan
set showmatch
set matchtime=1
set noshowmode
set nowritebackup
set nobackup
set noswapfile
set hidden
set splitright
set splitbelow
set list
set listchars=tab:\|\ ,trail:_,extends:\
set conceallevel=2 concealcursor=niv
set clipboard+=unnamed
set mouse-=a
set completeopt=menu,noinsert
set visualbell t_vb=
set noerrorbells
set signcolumn=yes
set updatetime=100
set synmaxcol=300
set laststatus=2

set tags=.tags,vendor.tags
set tagcase=match
nnoremap <silent> <C-]> g<C-]>

nnoremap <silent> <Leader>q :<C-u>cclose<CR>

nnoremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR>

try
  set fillchars=eob:\ ,
  set inccommand=nosplit

  autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
  autocmd TermOpen * tnoremap <silent> <ESC> <C-\><C-n>
catch
  " not supported
endtry

filetype plugin indent on
syntax on

autocmd FileType * setlocal formatoptions-=ro

let g:vim_json_syntax_conceal=0
let g:omni_sql_no_default_maps=1

let g:python_host_prog = expand('~/neovim2/bin/python')
let g:python3_host_prog = expand('~/neovim3/bin/python')

nnoremap <silent> q <Nop>

" hilight zenkaku space
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=red gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" multi line continuous paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
