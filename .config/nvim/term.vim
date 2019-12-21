let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 15
let g:neoterm_fixedsize = 1
let g:neoterm_use_relative_path = 1

" open/close terminal
nnoremap <silent> vc :<C-u>Ttoggle<CR>
" kills the current job (send a <c-c>)
nnoremap <silent> vq :<C-u>Tkill<CR>

command! -nargs=+ Rails   :T bin/rails <args>
command! -nargs=+ Django  :T python manage.py <args>

let g:test#strategy = 'dispatch'

if executable('pytest')
  let g:test#python#runner = 'pytest'
endif

if executable('rspec')
  let g:test#ruby#rspec#executable = 'rspec'
endif

let g:test#python#djangotest#options = '--noinput'
let g:test#python#pytest#options = '--quiet'

nnoremap <silent> tt :<C-u>TestLast<CR>
nnoremap <silent> tn :<C-u>call ChangeDirTest('TestNearest')<CR>
nnoremap <silent> tf :<C-u>call ChangeDirTest('TestFile')<CR>
nnoremap <silent> ts :<C-u>TestSuite<CR>
nnoremap <silent> tv :<C-u>TestVisit<CR>

let g:chdir_test_filetypes = ['go']
function! ChangeDirTest(testcmd) abort
  let l:project_root = getcwd()
  let l:cdcmd = has('lcd') ? 'lcd' : 'cd'
  if index(g:chdir_test_filetypes, &filetype) != -1
    execute l:cdcmd '%:p:h'
  endif
  execute a:testcmd
  execute l:cdcmd l:project_root
endfunction
