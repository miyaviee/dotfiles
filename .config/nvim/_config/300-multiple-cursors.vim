UsePlugin 'vim-multiple-cursors'

function! Multiple_cursors_before()
  let g:ale_enabled = 0
endfunction

function! Multiple_cursors_after()
  let g:ale_enabled = 1
endfunction
