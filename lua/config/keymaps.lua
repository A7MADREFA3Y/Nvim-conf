-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- no arrow navigation keys 
vim.keymap.set("n", "<Up>", "<Nop>", { desc = "disable up arrow key in normal mode" })
vim.keymap.set("n", "<Down>", "<Nop>", { desc = "disable down arrow key in normal mode" })
vim.keymap.set("n", "<Left>", "<Nop>", { desc = "disable left arrow key in normal mode" })
vim.keymap.set("n", "<Right>", "<Nop>", { desc = "disable right arrow key in normal mode" })

-- Teleopscope stuff
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})


