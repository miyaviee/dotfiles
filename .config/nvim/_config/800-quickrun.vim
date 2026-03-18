UsePlugin 'vim-quickrun'

let g:quickrun_config = {
      \   '_': {
      \     'runner': has('nvim') ? 'neovim_job' : 'job',
      \     'outputter': 'quickfix',
      \     'outputter/quickfix/errorformat': '%m',
      \   },
      \ }

nmap <Leader>r <Plug>(quickrun)

nnoremap <silent><expr> <C-c> quickrun#session#exists() ?
      \ quickrun#session#sweep() : "\<C-c>"
