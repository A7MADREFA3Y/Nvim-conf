-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Up>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<nop>", { noremap = true, silent = true })

vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line to void" })
vim.keymap.set("v", "d", '"_d', { desc = "Delete selection to void" })

vim.keymap.set("n", "<s-j>", "<nope>", { noremap = true, silent = true })

-- Swap them: Leader - for vertical, Leader | for horizontal
vim.keymap.set("n", "<leader>-", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>|", ":split<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

-- local function safe_del(mode, lhs)
--   pcall(vim.keymap.del, mode, lhs)
-- end
--
-- -- Safe löschen (kein Error)
-- safe_del("n", "<leader>K")
-- safe_del("n", "<leader>L")
-- safe_del("n", "<leader>S")
-- safe_del("n", "<leader>.")
-- safe_del("n", "<leader>bl")
-- safe_del("n", "<leader>br")
-- safe_del("n", "<leader>bj")
-- safe_del("n", "<leader>cA")
-- safe_del("n", "<leader>cc")
-- safe_del("n", "<leader>cC")
-- safe_del("n", "<leader>fe")
-- safe_del("n", "<leader>fE")
-- safe_del("n", "<leader>ff")
-- safe_del("n", "<leader>fF")
-- safe_del("n", "<leader>fn")
-- safe_del("n", "<leader>fp")
-- safe_del("n", "<leader>fr")
