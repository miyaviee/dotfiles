" colorscheme
set termguicolors
set background=dark

try
  colorscheme everforest
catch
  " no colorscheme
endtry

highlight! Normal ctermbg=NONE guibg=NONE
highlight! NormalNC ctermbg=NONE guibg=NONE
highlight! LineNr cterm=NONE ctermbg=NONE gui=NONE guibg=NONE
highlight! SignColumn cterm=NONE ctermbg=NONE gui=NONE guibg=NONE
highlight! VertSplit cterm=NONE ctermbg=NONE gui=NONE guibg=NONE
