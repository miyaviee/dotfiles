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
      \       [ 'quickrun_job', 'neomake_job', 'fileformat', 'fileencoding', 'filetype' ],
      \     ],
      \   },
      \   'inactive': {
      \     'left': [
      \       [ 'relativepath' ],
      \     ],
      \   },
      \   'component_function': {
      \     'quickrun_job': 'QuickRunJobStatus',
      \     'neomake_job': 'NeomakeJobStatus',
      \   },
      \ }
