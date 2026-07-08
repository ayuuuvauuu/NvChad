local nvchad_lsp = require("nvchad.configs.lspconfig")

dofile(vim.g.base46_cache .. "lsp")
require("nvchad.lsp").diagnostic_config()

local augroup = vim.api.nvim_create_augroup("UserLspAttach", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
  group = augroup,
  callback = function(args)
    nvchad_lsp.on_attach(_, args.buf)
  end,
})

vim.lsp.config("*", { capabilities = nvchad_lsp.capabilities, on_init = nvchad_lsp.on_init })
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      workspace = {
        library = {
          vim.fn.expand "$VIMRUNTIME/lua",
          vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
          vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
          "${3rd}/luv/library",
        },
      },
    },
  },
})

vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

-- Disable ALL LSP autostart — undo anything nvchad's defaults() might have enabled
pcall(function()
  for name in pairs(vim.lsp.config._configs) do
    vim.lsp.enable(name, false)
  end
end)

