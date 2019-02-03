" syntax
let g:ale_fix_on_save = 1

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0

let g:ale_open_list = 1
let g:ale_set_highlights = 0

let g:ale_pattern_options = {
      \ '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_linters = {
      \ 'go': ['vet', 'golint'],
      \ 'python': ['flake8'],
      \ 'ruby': ['rubocop', 'rails_best_pracitices'],
      \ }

let g:ale_fixers = {
      \ 'go': ['goimports'],
      \ 'python': ['black'],
      \ 'javascript': ['eslint'],
      \ 'javascript.jsx': ['eslint'],
      \ }

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" lsp
let g:LanguageClient_serverCommands = {
    \ 'go': ['go-langserver', '-gocodecompletion'],
    \ 'python': ['pyls'],
    \ }

let g:LanguageClient_diagnosticsSignsMax = 0
let g:LanguageClient_changeThrottle = 0.1
let g:LanguageClient_diagnosticsList = 'Disabled'
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_loadSettings = 0
let g:LanguageClient_hasSnippetSupport = 0
let g:LanguageClient_waitOutputTimeout = 5
let g:LanguageClient_hoverPreview = 'Never'

" jsx
let g:jsx_ext_required = 0

" ctags
let g:gutentags_ctags_tagfile = '.git/tags'

" comment
autocmd FileType php setlocal commentstring=//\ %s
autocmd FileType sh setlocal commentstring=#\ %s

" table
let g:table_mode_corner = '|'