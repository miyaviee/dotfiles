UsePlugin 'ctrlp.vim'

let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_line_prefix = ''

if executable('rg')
  let g:ctrlp_user_command = 'rg --hidden --files %s'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_buffer_func = {
    \   'enter': 'DisableLastStatus',
    \   'exit':  'EnableLastStatus',
    \ }

func! DisableLastStatus()
    setlocal laststatus=0
endfunc

func! EnableLastStatus()
    setlocal laststatus=2
endfunc
