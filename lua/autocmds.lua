require "nvchad.autocmds"

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "LspLoaded",
--   callback = function()
--     -- Check if any LSP clients are running
--     local clients = vim.lsp.get_clients()
--
--     -- Add a slight delay to ensure LSP is fully initialized
--     vim.defer_fn(function()
--       vim.cmd "LspStop"
--       print "LspStop executed"
--     end, 100)
--   end,
-- })
