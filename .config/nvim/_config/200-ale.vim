UsePlugin 'ale'

let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0

let g:ale_open_list = 1
let g:ale_list_window_size = 5

let g:ale_pattern_options = {
      \   '\.direnv/\|\.venv/\|\.vim/\|vendor/\|migrations/': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_virtualtext_cursor = 0
let g:ale_echo_cursor = 1

let g:ale_go_golangci_lint_package = 1
let g:ale_go_golangci_lint_options = '--disable-all --enable=golint .'
let g:ale_go_staticcheck_lint_package = 1

let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_enter = 1
let g:ale_linters = {
      \   'go': ['golangci-lint', 'staticcheck'],
      \   'python': ['flake8'],
      \   'ruby': ['ruby'],
      \ }

let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \   'go': ['goimports'],
      \   'python': ['black', 'isort'],
      \   'javascript': ['eslint'],
      \   'javascript.jsx': ['eslint'],
      \   'vue': ['eslint'],
      \   'terraform': ['terraform'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)

highlight! link ALEErrorSign Error
highlight! link ALEWarningSign Warning
