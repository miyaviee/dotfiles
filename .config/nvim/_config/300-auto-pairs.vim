UsePlugin 'auto-pairs'

let g:AutoPairsMapCR = 0
let g:AutoPairsMultilineClose = 0

inoremap <silent><expr> <CR> pumvisible() ?
      \ "\<C-y>" : "\<CR>\<C-r>=AutoPairsReturn()\<CR>"
