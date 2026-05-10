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

-- delete old maping
vim.keymap.del("n", "<leader>K")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader>S")
vim.keymap.del("n", "<leader>.")
vim.keymap.del("n", "<leader>bl")
vim.keymap.del("n", "<leader>br")
vim.keymap.del("n", "<leader>bj")
vim.keymap.del("n", "<leader>cA")
vim.keymap.del("n", "<leader>cc")
vim.keymap.del("n", "<leader>cC")
