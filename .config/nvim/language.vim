" syntax
let g:ale_disable_lsp = 1
let g:ale_pattern_options = {
      \   '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_go_golangci_lint_options = '--disable-all --enable=golint'

let g:ale_lint_delay = 500
let g:ale_linters = {
      \   'go': ['govet', 'golangci-lint'],
      \   'python': ['flake8'],
      \   'ruby': ['rubocop'],
      \   'typescript': ['tsserver'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   'go': ['goimports'],
      \   'python': executable('black') ? ['black'] : ['yapf'],
      \   'javascript': ['eslint'],
      \   'javascript.jsx': ['eslint'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

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

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-go',
      \   'coc-python',
      \   'coc-solargraph',
      \   'coc-tsserver',
      \   'coc-vetur',
      \   'coc-neosnippet',
      \   'coc-pairs',
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

" table
let g:table_mode_corner = '|'

" go
let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0

let g:go_fmt_autosave = 0
let g:go_mod_fmt_autosave = 0
let g:go_asmfmt_autosave = 0
let g:go_metalinter_autosave = 0

let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1
