let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_use_relative_path = 1

" open/close terminal
nnoremap <silent> vc :<C-u>Ttoggle<CR>
" kills the current job (send a <c-c>)
nnoremap <silent> vq :<C-u>Tkill<CR>

command! -nargs=+ Rails   :T bin/rails <args>
command! -nargs=+ Django  :T python manage.py <args>

let g:test#strategy = 'neoterm'

let g:test#python#djangotest#options = {
      \ 'file': '--failfast --noinput',
      \ 'suite': '--failfast --noinput',
      \ }

nnoremap <silent> tt :<C-u>TestLast<CR>
nnoremap <silent> tf :<C-u>TestFile<CR>
nnoremap <silent> ts :<C-u>TestSuite<CR>
