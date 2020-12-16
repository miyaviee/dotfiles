UsePlugin 'vim-startify'

let g:startify_change_to_dir = 0
let g:startify_files_number = 20
let g:startify_lists = [
  \   { 'header': ['MRU' . getcwd()], 'type': 'dir' },
  \ ]
