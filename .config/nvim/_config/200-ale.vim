UsePlugin 'ale'

let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0
let g:ale_open_list = 'on_save'
let g:ale_pattern_options = {
      \   '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_go_golangci_lint_package = 1
let g:ale_go_golangci_lint_options = '--disable-all --enable=golint .'
let g:ale_go_staticcheck_lint_package = 1

let g:ale_lint_on_enter = 0
let g:ale_linters = {
      \   'go': ['golangci-lint', 'staticcheck'],
      \   'python': ['flake8'],
      \   'ruby': ['rubocop'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   'go': ['goimports'],
      \   'python': ['black'],
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \   'javascript.jsx': ['eslint'],
      \   'vue': ['eslint'],
      \   'terraform': ['terraform'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)
