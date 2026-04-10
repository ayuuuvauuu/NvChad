pcall(function()
  dofile(vim.g.base46_cache .. "syntax")
  dofile(vim.g.base46_cache .. "treesitter")
end)

return {
  ensure_installed = {"markdown","markdown_inline","lua", "luadoc", "printf", "vim", "vimdoc", "rust", "python", "c", "cpp"},

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}
