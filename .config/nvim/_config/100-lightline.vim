UsePlugin 'lightline.vim'

setlocal laststatus=2

let g:lightline = {
      \   'colorscheme': 'gruvbox_material',
      \   'active': {
      \     'left': [
      \       [ 'mode', 'paste' ],
      \       [ 'readonly', 'relativepath', 'modified' ],
      \     ],
      \     'right': [
      \       [ 'lineinfo' ],
      \       [ 'percent' ],
      \       [ 'list_count', 'quickrun_job', 'neomake_job', 'fileformat', 'fileencoding', 'filetype' ],
      \     ],
      \   },
      \   'inactive': {
      \     'left': [
      \       [ 'relativepath' ],
      \     ],
      \   },
      \   'component_function': {
      \     'list_count': 'ListCountStatus',
      \     'quickrun_job': 'QuickRunJobStatus',
      \     'neomake_job': 'NeomakeJobStatus',
      \   },
      \ }

function! ListCountStatus() abort
  let l:count = len(getloclist(win_getid()))
  return l:count == 0 ? 'OK' : printf('L:%d', l:count)
endfunction
