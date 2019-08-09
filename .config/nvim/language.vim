" syntax
let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0
let g:ale_pattern_options = {
      \   '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_go_gofmt_options = '-s'
let g:ale_go_golangci_lint_options = '--disable-all --enable=golint'

let g:ale_linters = {
      \   'go': ['golangci-lint'],
      \   'python': ['flake8'],
      \   'ruby': ['rubocop'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   'go': ['gofmt', 'goimports'],
      \   'python': executable('black') ? ['black'] : ['yapf'],
      \   'javascript': ['eslint'],
      \   'javascript.jsx': ['eslint'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

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

" coc
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

let g:coc_global_extensions = [
      \   'coc-json',
      \   'coc-go',
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

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'

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

let g:go_list_type = 'quickfix'
let g:go_guru_scope = []

let g:go_fmt_autosave = 0
let g:go_mod_fmt_autosave = 0
let g:go_asmfmt_autosave = 0
let g:go_metalinter_autosave = 0

let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1
