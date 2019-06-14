" colorscheme
set termguicolors
set background=dark

try
  colorscheme gruvbox
catch
  " no colorscheme
endtry

hi! LineNr cterm=None ctermbg=None gui=None guibg=None
hi! SignColumn cterm=None ctermbg=None gui=None guibg=None
hi! VertSplit cterm=None ctermbg=None gui=None guibg=None

hi! GitGutterAdd cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterChange cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterChangeDelete cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterDelete cterm=None ctermbg=None gui=None guibg=None

" statusline
let g:lightline = {
      \   'colorscheme': 'gruvbox',
      \ }

let g:lightline.component_expand = {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \ }

let g:lightline.component_type = {
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left',
      \ }

let g:lightline.active = {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'readonly', 'absolutepath', 'modified' ],
      \     [ 'linter_checking', 'linter_errors', 'linter_warnings' ],
      \   ],
      \ }

" Move to char in line
nmap f <Plug>(easymotion-fl)
nmap F <Plug>(easymotion-Fl)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1

" ctrlp
nnoremap <silent> <C-\> :<C-u>CocList outline<CR>
inoremap <silent> <C-\> <ESC>:<C-u>CocList outline<CR>

let g:ctrlp_line_prefix = ''

if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_buffer_func = {
    \   'enter': 'DisableLastStatus',
    \   'exit':  'EnableLastStatus',
    \ }

func! DisableLastStatus()
    set laststatus=0
endfunc

func! EnableLastStatus()
    set laststatus=2
endfunc

" grepper
nnoremap <silent> <C-g> :<C-u>Grepper -tool rg<CR>
inoremap <silent> <C-g> <ESC>:<C-u>Grepper -tool rg<CR>

nnoremap <silent> <C-h> :<C-u>Grepper -tool rg -cword -noprompt<CR>
inoremap <silent> <C-h> <ESC>:<C-u>Grepper -tool rg -cword -noprompt<CR>

nnoremap <silent> <C-l> :<C-u>Grepper -tool rg -buffer<CR>
inoremap <silent> <C-l> <ESC>:<C-u>Grepper -tool rg -buffer<CR>

let g:grepper = {
      \   'simple_prompt': 1,
      \   'tools': ['rg'],
      \ }

let g:grepper.rg = {
      \   'grepprg': 'rg --vimgrep --hidden --smart-case',
      \ }
