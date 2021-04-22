UsePlugin 'vim-multiple-cursors'

function! Multiple_cursors_before()
  let b:coc_suggest_disable = 1
  let g:ale_enabled = 0
endfunction

function! Multiple_cursors_after()
  let b:coc_suggest_disable = 0
  let g:ale_enabled = 1
endfunction
