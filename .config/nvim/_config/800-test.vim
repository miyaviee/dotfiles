UsePlugin 'vim-test'

let g:test#strategy = 'neomake'

if executable('pytest')
  let g:test#python#runner = 'pytest'
endif

if executable('rspec')
  let g:test#ruby#rspec#executable = 'rspec'
endif

let g:test#python#djangotest#options = '--noinput'
let g:test#python#pytest#options = '--quiet'

nnoremap <silent> tt :<C-u>TestLast<CR>
nnoremap <silent> tn :<C-u>TestNearest<CR>
nnoremap <silent> tf :<C-u>TestFile<CR>
nnoremap <silent> ts :<C-u>TestSuite<CR>
nnoremap <silent> tv :<C-u>TestVisit<CR>

augroup vimtest
  autocmd!
  autocmd BufEnter *.go let g:test#project_root = expand('%:p:h')
augroup END
