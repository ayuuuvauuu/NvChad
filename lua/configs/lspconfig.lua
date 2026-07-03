require("nvchad.configs.lspconfig").defaults()

vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

local servers = { "html", "cssls", "pyright", "clangd", "rust_analyzer", "lua_ls" }
vim.lsp.enable(servers, false)

vim.lsp.config("gitlab_duo", {
  filetypes = {},
  cmd = {},
})

vim.lsp.config("rust_analyzer", {
  settings = {
    cargo = {
      allFeatures = true,
    },
    checkOnSave = true,
  },
})
