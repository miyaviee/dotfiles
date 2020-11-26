UsePlugin 'vim-grepper'

nnoremap <silent> <C-g> :<C-u>Grepper<CR>
nnoremap <silent> <C-h> :<C-u>Grepper -cword -noprompt<CR>
nnoremap <silent> <C-l> :<C-u>Grepper -buffer<CR>

let g:grepper = {
      \   'simple_prompt': 1,
      \   'tools': ['rg'],
      \ }

let g:grepper.rg = {
      \   'grepprg': 'rg --vimgrep --hidden --smart-case',
      \ }
