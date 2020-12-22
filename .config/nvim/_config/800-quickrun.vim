UsePlugin 'vim-quickrun'

function! JobStatus()
  if quickrun#is_running()
    return "Running..."
  endif
  return ""
endfunction

let g:quickrun_config = {
      \   '_': {
      \     'runner': 'neovim_job',
      \     'outputter': 'quickfix',
      \     'outputter/quickfix/errorformat': '%m',
      \   },
      \ }

nnoremap <silent><expr> <C-c> quickrun#is_running() ?
      \ quickrun#sweep_sessions() : "\<C-c>"
