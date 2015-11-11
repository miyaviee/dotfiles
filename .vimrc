set nocompatible

filetype off            " for NeoBundle

if has('vim_starting')
  set rtp+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
"plugin
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/vimproc.vim', {
    \ 'build' : {
    \     'windows' : 'tools\\update-dll-mingw',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make',
    \     'linux' : 'make',
    \     'unix' : 'gmake',
    \    },
    \ }
call neobundle#end()

filetype plugin indent on       " restore filetype

set fileformat=unix
set fileencoding=utf-8
set tabstop=2
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set backspace=indent,eol,start
set ignorecase
set smartcase
set infercase
set showmatch
set matchtime=1
set nowritebackup
set nobackup
set noswapfile

set list
set lcs=tab:>-,trail:_,extends:\

let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'

"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

au bufnewfile,bufread *.php set noexpandtab tabstop=2 shiftwidth=2
au bufnewfile,bufread *.inc set noexpandtab tabstop=2 shiftwidth=2
au bufnewfile,bufread *.tpl set noexpandtab tabstop=2 shiftwidth=2

autocmd FileType html inoremap <silent> <buffer> </ </<C-x><C-o>

""" Unite.vim
" 起動時にインサートモードで開始
let g:unite_enable_start_insert = 1
" インサート／ノーマルどちらからでも呼び出せるようにキーマップ
nnoremap <silent> <C-f> :<C-u>Unite file<CR>
inoremap <silent> <C-f> <ESC>:<C-u>Unite file<CR>
nnoremap <silent> <C-b> :<C-u>Unite buffer file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer file_mru<CR>
" ファイル検索
inoremap <silent> <C-p> <Esc>:w<CR>:CtrlP<CR>

" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<DOWN>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
 set conceallevel=2 concealcursor=i
endif"

" vを二回で行末まで選択
vnoremap v $h

" grep検索
nnoremap <silent> <C-g>  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> <C-j> :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W><CR>
inoremap <silent> <C-j> <ESC>:<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W><CR>
" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
let g:unite_source_grep_recursive_opt = ''
endif

" vp doesn't replace paste buffer
function! RestoreRegister()
let @" = s:restore_reg
return ''
endfunction
function! s:Repl()
let s:restore_reg = @"
return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()"

syntax on
set cursorline

" Move new tabpage at the last.
nnoremap <silent> <C-w>t  :<C-u>tabnew \| :tabmove<CR>
nnoremap <silent> <C-w>o  :<C-u>tabonly<CR>

"uniteを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  "ESCでuniteを終了
  nmap <buffer> <ESC> <Plug>(unite_exit)
  "ctrl+jで縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-w>s unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-w>s unite#do_action('split')
  "ctrl+lで横に分割して開く
  nnoremap <silent> <buffer> <expr> <C-w>v unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-w>v unite#do_action('vsplit')
  "ctrl+tで新しいタブで開く
  nnoremap <silent> <buffer> <expr> <C-w>t unite#do_action('tabopen')
  inoremap <silent> <buffer> <expr> <C-w>t unite#do_action('tabopen')
  "ctrl+oでその場所に開く
  nnoremap <silent> <buffer> <expr> <C-w>o unite#do_action('open')
  inoremap <silent> <buffer> <expr> <C-w>o unite#do_action('open')
  " キャンセル
  nnoremap <silent> <buffer> <silent><ESC> :q<CR>
  inoremap <silent> <buffer> <silent><ESC> <ESC>:q<CR>
endfunction"}}}

colorscheme molokai
hi Normal ctermbg=none

"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplecache_min_syntax_length = 5
let g:neocomplcache_auto_completion_start_length = 5
let g:neocomplcache_max_list = 20
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : ''
      \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns['php'] = ['->', '::', '\']
let g:neocomplcache_delimiter_patterns['tpl'] = ['\.']
let g:neocomplcache_delimiter_patterns['ruby'] = ['::','\.']

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns['default'] = ''

let g:neocomplcache_plugin_disable = {
  \ 'syntax_complete' : 1
  \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"

" vim shell
nnoremap <silent>vs :VimShell<CR>
nnoremap <silent>vp :VimShellPop<CR>

" git diff
nnoremap <silent>gd :Gdiff<CR>
