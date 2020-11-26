UsePlugin 'lightline.vim'

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
      \       [ 'job', 'fileformat', 'fileencoding', 'filetype' ],
      \     ],
      \   },
      \   'inactive': {
      \     'left': [
      \       [ 'relativepath' ],
      \     ],
      \   },
      \   'component_function': {
      \     'job': 'JobStatus',
      \   },
      \ }
