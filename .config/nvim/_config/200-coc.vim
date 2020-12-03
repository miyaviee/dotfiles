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

imap <expr><TAB> coc#jumpable() ?
      \ "\<C-g>u\<C-j>" : coc#expandable() ?
      \ "\<Plug>(coc-snippets-expand)" : "\<TAB>"
smap <expr><TAB> coc#jumpable() ?
      \ "\<C-j>" : "\<TAB>"

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-word',
      \   'coc-vimlsp',
      \   'coc-snippets',
      \   'coc-pairs',
      \ ]

nnoremap <silent><C-\> :<C-u>CocList outline<CR>

autocmd FileType list setlocal laststatus=0
