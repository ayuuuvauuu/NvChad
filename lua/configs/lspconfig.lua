require("nvchad.configs.lspconfig").defaults()

vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

local servers = { "html", "cssls", "pyright", "clangd", "rust_analyzer", "lua_ls" }
for _, server in ipairs(servers) do
  vim.lsp.enable(server, false)
end

