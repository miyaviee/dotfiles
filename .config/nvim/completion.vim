" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 20

call deoplete#custom#option('ignore_sources', {'_': ['ale']})

function g:Multiple_cursors_before()
  call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction

function g:Multiple_cursors_after()
  call deoplete#custom#buffer_option('auto_complete', v:true)
endfunction

imap <expr><C-c> pumvisible() ? deoplete#smart_close_popup() : "\<C-c>"

" neosnippet
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)" : neosnippet#expandable()
      \ ? "\<Plug>(neosnippet_expand)" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)" : "\<TAB>"

" emmet
let g:user_emmet_settings = {
      \    'variables': {
      \      'lang': "ja"
      \    }
      \ }
