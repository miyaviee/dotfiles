" colorscheme
set termguicolors
set background=dark

try
  colorscheme quantum
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
      \   'colorscheme': 'quantum',
      \   'active': {
      \     'left': [
      \       [ 'mode', 'paste' ],
      \       [ 'readonly', 'relativepath', 'modified' ],
      \     ],
      \   },
      \   'inactive': {
      \     'left': [
      \       [ 'relativepath' ],
      \     ],
      \   },
      \ }

" Move to char in line
nmap f <Plug>(easymotion-fl)
nmap F <Plug>(easymotion-Fl)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1

" ctrlp
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

" outline
nnoremap <silent> <C-\> :<C-u>Vista finder coc<CR>

" grepper
nnoremap <silent> <C-g> :<C-u>Grepper -tool rg<CR>
nnoremap <silent> <C-h> :<C-u>Grepper -tool rg -cword -noprompt<CR>
nnoremap <silent> <C-l> :<C-u>Grepper -tool rg -buffer<CR>

let g:grepper = {
      \   'simple_prompt': 1,
      \   'tools': ['rg'],
      \ }

let g:grepper.rg = {
      \   'grepprg': 'rg --vimgrep --hidden --smart-case',
      \ }

" vista
let g:vista#renderer#enable_icon = 0
let g:vista_close_on_jump = 1
let g:vista_default_executive = 'coc'
let g:vista_echo_cursor_strategy = 'scroll'
