UsePlugin 'neomake'

let g:neomake_open_list = 2
let g:neomake_list_height = 20

function! NeomakeJobStatus() abort
  let jobs = neomake#GetJobs()
  if !empty(jobs)
    return 'Neomake Running...'
  endif
  return ''
endfunction
