let s:fname = getcwd() . '/.local.vim'
if filereadable(s:fname)
  source `=s:fname`
endif
