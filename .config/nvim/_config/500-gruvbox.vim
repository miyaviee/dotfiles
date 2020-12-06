UsePlugin 'gruvbox'

if get(g:, 'colors_name', '') != 'gruvbox' | finish | endif

highlight! GruvboxRedSign cterm=NONE ctermbg=NONE gui=NONE guibg=NONE
highlight! GruvboxYellowSign cterm=NONE ctermbg=NONE gui=NONE guibg=NONE
highlight! link Error GruvboxRedSign
highlight! link Warning GruvboxYellowSign
