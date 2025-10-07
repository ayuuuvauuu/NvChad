require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", "K", function()
  vim.diagnostic.open_float()
end, {desc = " hover error show", silent = true })

map("n", "<leader>k", function()
  vim.lsp.buf.hover { border = "rounded" }
end, { buffer = bufnr, desc = "LSP: hover", silent = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<S-L>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-H>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> :update <cr>")

map("n", "<leader>tT", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

map("n", "<leader>ca", "<cmd> :lua vim.lsp.buf.code_action() <cr>", { desc = "lsp code action" })

map("n", "cpp", "<cmd> :terminal g++ -std=c++17 % -o %:r && ./%:r<cr>", { desc = "run cpp code" })
map("n", "cp", "<cmd> :terminal ./%:r<cr>", { desc = "output of cpp code" })
------------------------------------------  Nav------------------------------------------

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
------------------------------------------ Git ------------------------------------------

map("n", "<leader>gs", function()
  require("gitsigns").stage_hunk()
end, { desc = "stage_hunk" })

map("n", "<leader>gU", function()
  require("gitsigns").undo_stage_buffer()
end, { desc = "undo_stage_buffer" })

map("n", "<leader>gu", function()
  require("gitsigns").undo_stage_hunk()
end, { desc = "undo_stage_hunk" })

map("n", "<leader>gS", function()
  require("gitsigns").stage_buffer()
end, { desc = "stage_buffer" })

map("n", "<leader>gR", function()
  require("gitsigns").reset_buffer()
end, { desc = "reset_buffer" })

map("n", "<leader>gr", function()
  require("gitsigns").reset_hunk()
end, { desc = "reset_hunk" })

map("n", "<leader>gd", function()
  require("gitsigns").diffthis()
end, { desc = "view changes" })

map("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { desc = "blame line" })

map("n", "<leader>gh", function()
  require("gitsigns").preview_hunk()
end, { desc = "preview changes in hunk" })

map("n", "[c", function()
  require("gitsigns").prev_hunk()
end, { desc = "jump to prev hunk" })

map("n", "]c", function()
  require("gitsigns").preview_hunk()
end, { desc = "jump to next hunk" })

------------------------------------------Harpoon------------------------------------------

map("n", "<leader>a", function()
  require("harpoon.mark").add_file()
end, { desc = "har add" })

map("n", "<leader>h", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "har menu" })

map("n", "<C-h>", function()
  require("harpoon.ui").nav_file(1)
end, { desc = "nav har 1" })

map("n", "<C-j>", function()
  require("harpoon.ui").nav_file(2)
end, { desc = "nav har 2 " })

map("n", "<C-k>", function()
  require("harpoon.ui").nav_file(3)
end, { desc = "nav har 3" })

map("n", "<C-l>", function()
  require("harpoon.ui").nav_file(4)
end, { desc = "nav har 4" })

map("n", "<C-x>", function()
  require("harpoon.term").gotoTerminal(1)
end, { desc = "nav har term 1" })
