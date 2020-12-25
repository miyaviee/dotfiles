UsePlugin 'neomake'

function! NeomakeJobFinishedStatus() abort
  let context = g:neomake_hook_context
  if context.jobinfo.exit_code != 0
    copen 20
  else
    cclose
  endif
endfunction

augroup neomake_hooks
  autocmd!
  autocmd User NeomakeJobStarted  echo 'Neomake Running...'
  autocmd User NeomakeJobFinished echo '' | call NeomakeJobFinishedStatus()
augroup END
