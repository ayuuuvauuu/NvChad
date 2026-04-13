require "nvchad.options"
local opt = vim.opt

-- Show tabs with file names
-- vim.o.tabline = '%!v:lua.require("nvim-web-devicons").get_tab_label(%1)'
opt.showtabline = 2  -- Always show tabline

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
