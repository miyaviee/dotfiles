UsePlugin 'ctrlp.vim'

let g:ctrlp_cmd = 'CtrlPCurWD'
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
