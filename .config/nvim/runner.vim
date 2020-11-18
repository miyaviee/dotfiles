" neoterm
let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 20
let g:neoterm_fixedsize = 1
let g:neoterm_use_relative_path = 1

" open/close terminal
nnoremap <silent> vc :<C-u>Ttoggle<CR>
" kills the current job (send a <c-c>)
nnoremap <silent> vq :<C-u>Tkill<CR>

command! -nargs=+ Rails   :T bin/rails <args>
command! -nargs=+ Django  :T python manage.py <args>

" asyncrun
let g:asyncrun_open = 20

" dispatch
let g:dispatch_quickfix_height = 20

" test
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
nnoremap <silent> tn :<C-u>call ChangeDirTest('nearest')<CR>
nnoremap <silent> tf :<C-u>call ChangeDirTest('file')<CR>
nnoremap <silent> ts :<C-u>TestSuite<CR>
nnoremap <silent> tv :<C-u>TestVisit<CR>

augroup vimtest
  autocmd!
  autocmd BufEnter *.go let g:test#project_root = expand('%:p:h')
augroup END

function! ChangeDirTest(type) abort
  let dir = getcwd()
  call test#run(a:type, [])
  if exists('g:test#project_root')
    execute 'cd' fnameescape(dir)
  endif
endfunction

" quickrun
let g:quickrun_config = {
      \   '_': {
      \     'runner': 'neovim_job',
      \     'outputter': 'quickfix',
      \     'outputter/quickfix/errorformat': '%m',
      \   },
      \ }
