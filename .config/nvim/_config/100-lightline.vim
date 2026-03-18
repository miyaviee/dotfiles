UsePlugin 'lightline.vim'

setlocal laststatus=2

let g:lightline = {
      \   'colorscheme': get(g:, 'colors_name', 'default'),
      \   'active': {
      \     'left': [
      \       [ 'mode', 'paste' ],
      \       [ 'readonly', 'relativepath', 'modified' ],
      \     ],
      \     'right': [
      \       [ 'lineinfo' ],
      \       [ 'percent' ],
      \       [ 'list_count', 'neomake_job', 'fileformat', 'fileencoding', 'filetype' ],
      \     ],
      \   },
      \   'inactive': {
      \     'left': [
      \       [ 'relativepath' ],
      \     ],
      \   },
      \   'component_function': {
      \     'list_count': 'ListCountStatus',
      \     'neomake_job': 'NeomakeJobStatus',
      \   },
      \ }

function! ListCountStatus() abort
  let l:count = len(getloclist(win_getid()))
  return l:count == 0 ? 'OK' : printf('L:%d', l:count)
endfunction
