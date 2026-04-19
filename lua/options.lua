require "nvchad.options"

vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#ffffff', bg = '#44475A' })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#629284', bg = '#44475A' })
vim.api.nvim_set_hl(0, 'TabLine', { fg = '#849c94', bg = '#303240' })
vim.api.nvim_set_hl(0, 'TabLineSel', { fg = '#F8F8F2', bg = '#171924' })
vim.api.nvim_set_hl(0, 'TabLineFill', { fg = '#849c94', bg = '#303240' })

local opt = vim.opt

-- Show tabs with file names
-- vim.o.tabline = '%!v:lua.require("nvim-web-devicons").get_tab_label(%1)'
opt.showtabline = 2  -- Always show tabline
opt.scrolloff = 5

opt.number = true
opt.relativenumber = true
opt.numberwidth = 1
opt.ruler = true
opt.timeoutlen = 200
opt.cc = "72"

-- to fix sudo no copy error
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy",
  },
  paste = {
    ["+"] = "wl-paste --no-newline",
    ["*"] = "wl-paste --no-newline",
  },
  cache_enabled = 0,
}
