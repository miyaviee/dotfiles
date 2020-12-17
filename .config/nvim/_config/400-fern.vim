UsePlugin 'fern.vim'

nnoremap <silent><C-e> :<C-u>Fern %:h -reveal=%<CR>

let g:fern#default_exclude = '^.git$'

autocmd FileType fern call s:init_fern()

function s:init_fern() abort
  nmap <silent><buffer> <CR> <Plug>(fern-action-open-or-enter)
endfunction
