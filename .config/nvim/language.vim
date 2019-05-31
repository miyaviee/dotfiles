" syntax
let g:ale_set_highlights = 0

let g:ale_pattern_options = {
      \   '\.direnv\|\.venv\|\.vim\|vendor\|migrations': {'ale_linters': [], 'ale_fixers': []},
      \ }

let g:ale_lint_delay = 500
let g:ale_linters = {
      \   'go': ['golint'],
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

" lsp
let g:LanguageClient_serverCommands = {
    \   'go': ['gopls'],
    \   'python': ['pyls'],
    \   'ruby': ['solargraph', 'stdio'],
    \   'javascript.jsx': ['javascript-typescript-stdio'],
    \   'typescript': ['javascript-typescript-stdio'],
    \ }

let g:LanguageClient_diagnosticsSignsMax = 0
let g:LanguageClient_changeThrottle = 0.1
let g:LanguageClient_diagnosticsList = 'Disabled'
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_hasSnippetSupport = 0
let g:LanguageClient_waitOutputTimeout = 5
let g:LanguageClient_hoverPreview = 'Never'

" jsx
function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <buffer> <silent> K     :call LanguageClient#textDocument_hover()<cr>
    nnoremap <buffer> <silent> gd    :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> <F2>  :call LanguageClient#textDocument_rename()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()

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

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
