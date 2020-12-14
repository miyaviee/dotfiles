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

inoremap <silent><expr> <CR> pumvisible() ?
      \ coc#_select_confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-word',
      \   'coc-vimlsp',
      \   'coc-pairs',
      \ ]

nnoremap <silent><C-\> :<C-u>CocList outline<CR>

autocmd BufEnter list://* setlocal laststatus=0
autocmd BufLeave list://* setlocal laststatus=2
