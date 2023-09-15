UsePlugin 'neoterm'

let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 20
let g:neoterm_fixedsize = 1
let g:neoterm_use_relative_path = 1

" open/close terminal
nnoremap <silent> vt :<C-u>Ttoggle<CR>
" kills the current job (send a <c-c>)
nnoremap <silent> vq :<C-u>Tkill<CR>

command! -nargs=+ Rails   :T bin/rails <args>
command! -nargs=+ Django  :T python manage.py <args>
