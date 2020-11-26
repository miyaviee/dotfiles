UsePlugin 'vim-test'

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
