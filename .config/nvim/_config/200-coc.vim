UsePlugin 'coc.nvim'

nmap <silent> gd    <Plug>(coc-definition)
nmap <silent> gy    <Plug>(coc-type-definition)
nmap <silent> gi    <Plug>(coc-implementation)
nmap <silent> gr    <Plug>(coc-references)
nmap <silent> gn    <Plug>(coc-rename)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <TAB> pumvisible() ?
      \ "\<C-y>" : "\<TAB>"

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-word',
      \   'coc-vimlsp',
      \ ]

nnoremap <silent><C-\> :<C-u>CocList outline<CR>

autocmd BufEnter list://* setlocal laststatus=0
autocmd BufLeave list://* setlocal laststatus=2
