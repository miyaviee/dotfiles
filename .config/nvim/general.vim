" colorscheme
set termguicolors
set background=dark

try
  colorscheme gruvbox
catch
  " no colorscheme
endtry

hi! LineNr cterm=None ctermbg=None gui=None guibg=None
hi! SignColumn cterm=None ctermbg=None gui=None guibg=None
hi! VertSplit cterm=None ctermbg=None gui=None guibg=None

hi! GitGutterAdd cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterChange cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterChangeDelete cterm=None ctermbg=None gui=None guibg=None
hi! GitGutterDelete cterm=None ctermbg=None gui=None guibg=None

" statusline
let g:lightline = {
      \   'colorscheme': 'gruvbox',
      \ }

let g:lightline.component_expand = {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \ }

let g:lightline.component_type = {
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'left',
      \ }

let g:lightline.active = {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'readonly', 'absolutepath', 'modified' ],
      \     [ 'linter_checking', 'linter_errors', 'linter_warnings' ],
      \   ],
      \ }

" filer
call denite#custom#option('_', 'prompt', '>')
call denite#custom#option('_', 'statusline', v:false)
call denite#custom#option('_', 'empty', v:false)
call denite#custom#option('_', 'winheight', 10)

if executable('rg')
  call denite#custom#var('file/rec', 'command', ['rg', '--color=never', '--files', '--glob', ''])

  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--hidden', '-S'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif

call denite#custom#map('insert', "<C-j>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<C-k>", '<denite:move_to_previous_line>')

call denite#custom#map('insert', "<C-s>", '<denite:do_action:split>')
call denite#custom#map('insert', "<C-v>", '<denite:do_action:vsplit>')

nnoremap <silent> <C-p> :<C-u>Denite file/rec<CR>
inoremap <silent> <C-p> <ESC>:<C-u>Denite file/rec<CR>

nnoremap <silent> <C-\> :<C-u>Denite outline<CR>
inoremap <silent> <C-\> <ESC>:<C-u>Denite outline<CR>

nnoremap <silent> <C-g> :<C-u>Denite grep -buffer-name=grep<CR>
inoremap <silent> <C-g> <ESC>:<C-u>Denite grep -buffer-name=grep<CR>

nnoremap <silent> <C-h> :<C-u>Denite grep:::`expand('<cword>')` -buffer-name=grep<CR>
inoremap <silent> <C-h> <ESC>:<C-u>Denite grep:::`expand('<cword>')` -buffer-name=grep<CR>

nnoremap <silent> <C-l> :<C-u>Denite grep:`expand('%')` -buffer-name=grep<CR>
inoremap <silent> <C-l> <ESC>:<C-u>Denite grep:`expand('%')` -buffer-name=grep<CR>

command! DResume  :Denite -buffer-name=grep -resume

" Move to char in line
nmap f <Plug>(easymotion-fl)
nmap F <Plug>(easymotion-Fl)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1
