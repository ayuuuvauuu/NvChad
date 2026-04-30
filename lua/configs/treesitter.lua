require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/site/parsers',  -- e.g., ~/.local/share/nvim/site/parsers
}
require('nvim-treesitter').install { 'rust', 'javascript', 'zig', 'cpp', 'lua', 'python' }
