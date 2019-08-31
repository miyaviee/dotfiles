" lint
let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0
let g:ale_pattern_options = {
      \   '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_go_golangci_lint_options = '--disable-all --enable=golint'

let g:ale_linters = {
      \   'go': ['golangci-lint'],
      \   'python': ['flake8'],
      \   'ruby': ['rubocop'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   'go': ['goimports'],
      \   'python': executable('black') ? ['black'] : ['yapf'],
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \   'javascript.jsx': ['eslint'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)

" lsp
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

" auto-pairs
let g:AutoPairsMapCR = 0
let g:AutoPairsMapBS = 0

" completion
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

function! Multiple_cursors_before()
  let b:coc_suggest_disable = 1
endfunction

function! Multiple_cursors_after()
  let b:coc_suggest_disable = 0
endfunction

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-python',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-word',
      \   'coc-neosnippet',
      \ ]

" neosnippet
imap <expr><TAB> neosnippet#jumpable() ?
      \ "\<Plug>(neosnippet_jump)" : neosnippet#expandable() ?
      \ "\<Plug>(neosnippet_expand)" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ?
      \ "\<Plug>(neosnippet_jump)" : "\<TAB>"

" emmet
let g:user_emmet_settings = {
      \    'variables': {
      \      'lang': "ja"
      \    }
      \ }

" jsx
let g:jsx_ext_required = 0

" ctags
let g:gutentags_ctags_tagfile = '.tags'

" go
let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0

let g:go_debug_windows = {
      \   'stack': 'leftabove 40vnew',
      \   'out': 'botright 20new',
      \   'vars': 'leftabove 60vnew',
      \ }

let g:go_list_type = 'quickfix'
let g:go_guru_scope = []

let g:go_fmt_autosave = 0
let g:go_mod_fmt_autosave = 0
let g:go_asmfmt_autosave = 0
let g:go_metalinter_autosave = 0

let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1
