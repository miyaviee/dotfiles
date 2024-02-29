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

inoremap <silent><expr> <TAB> coc#pum#visible() ?
      \ coc#pum#confirm() : coc#expandable() ?
      \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand',''])\<CR>" : "\<TAB>"

inoremap <silent> <CR> <C-r>=<SID>coc_confirm()<CR>
function! s:coc_confirm() abort
  if pumvisible()
    return "\<C-e>\<CR>"
  else
    return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  endif
endfunction

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-pyright',
      \   'coc-snippets',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-vimlsp',
      \   'coc-word',
      \ ]

nnoremap <silent><C-\> :<C-u>CocList outline<CR>

autocmd BufEnter list://* setlocal laststatus=0
autocmd BufLeave list://* setlocal laststatus=2

highlight! link CocFloating NormalFloat
