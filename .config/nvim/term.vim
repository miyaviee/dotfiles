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

if executable('pytest')
  let g:test#python#runner = 'pytest'
endif

let g:test#python#djangotest#options = '--failfast --noinput'
let g:test#python#pytest#options = '-x'
let g:test#go#gotest#options = '-failfast'

nnoremap <silent> tt :<C-u>TestLast<CR>
nnoremap <silent> tn :<C-u>TestNearest<CR>
nnoremap <silent> tf :<C-u>TestFile<CR>
nnoremap <silent> ts :<C-u>TestSuite<CR>
