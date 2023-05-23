UsePlugin 'vim-go'

let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_gopls_enabled = 0
let g:go_echo_go_info = 0
let g:go_doc_keywordprg_enabled = 0

let g:go_list_type = 'quickfix'
let g:go_list_height = 20

let g:go_fmt_autosave = 0
let g:go_fmt_command = 'goimports'
let g:go_mod_fmt_autosave = 0
let g:go_asmfmt_autosave = 0
let g:go_metalinter_autosave = 0
let g:go_imports_autosave = 0

let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0

if has('nvim-0.5') | finish | endif

let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1

let g:go_golint_bin = 'golint'
