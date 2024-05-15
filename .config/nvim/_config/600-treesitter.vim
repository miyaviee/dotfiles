UsePlugin 'nvim-treesitter'

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    'lua',
    'scss',
    'vim',
  },
}
EOF
