require "nvchad.options"
local opt = vim.opt

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
