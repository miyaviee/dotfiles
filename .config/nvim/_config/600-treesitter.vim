UsePlugin 'nvim-treesitter'

lua <<EOF
require'nvim-treesitter'.setup {
  highlight = {
    enable = true,
    disable = {
      'bash',
      'c',
      'lua',
      'markdown',
      'markdown_inline',
      'python',
      'vim',
      'vimdoc',
    },
  },
  ensure_installed = {
    'css',
    'scss',
  },
}
EOF
