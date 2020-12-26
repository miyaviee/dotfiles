UsePlugin 'spelunker.vim'

let g:spelunker_check_type = 2
let g:spelunker_disable_auto_group = 1

augroup spelunker
  autocmd!
  autocmd CursorHold * call spelunker#check_displayed_words()
augroup END

command! SpelunkerClearAll :call spelunker#matches#clear_matches()
