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
