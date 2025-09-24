require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "clangd", "rust_analyzer", "lua_ls" }
vim.lsp.enable(servers)

