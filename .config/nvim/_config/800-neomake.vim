UsePlugin 'neomake'

let g:neomake_open_list = 2
let g:neomake_list_height = 20

let g:neomake_virtualtext_current_error = 1
let g:neomake_virtualtext_prefix = '> '
let g:neomake_echo_current_error = !has('nvim')

function! NeomakeJobStatus() abort
  let jobs = neomake#GetJobs()
  if !empty(jobs)
    return 'Neomake Running...'
  endif
  return ''
endfunction
