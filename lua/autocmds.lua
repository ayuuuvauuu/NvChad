-- defer vim.treesitter.start so heavy grammars (cpp) don't block UIEnter
local orig_ts_start = vim.treesitter.start
vim.treesitter.start = function(buf, lang)
  local bufnr = buf or vim.api.nvim_get_current_buf()
  vim.schedule(function()
    if vim.api.nvim_buf_is_valid(bufnr) then
      pcall(orig_ts_start, bufnr, lang)
    end
  end)
end

require "nvchad.autocmds"

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "*",
--   callback = function()
--     pcall(vim.treesitter.start)
--   end,
-- })

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "LspLoaded",
--   callback = function()
--     -- Check if any LSP clients are running
--     local clients = vim.lsp.get_clients()
--
--     -- Add a slight delay to ensure LSP is fully initialized
--     vim.defer_fn(function()
--       vim.cmd "lsp disable"
--       print "LspStop executed"
--     end, 100)
--   end,
-- })
