-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- NORMAL --

-- move line or block like alt+arrowup or alt+arrowdown
keymap.set("n", "<C-j>", ":m .+1<CR>==")
keymap.set("n", "<C-k>", ":m .-2<CR>==")
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")
-- toggleterm
-- <Leader>t - toggle terminal

-- INSERT --

-- move line or block like alt+arrow-up or alt+arrow-down
keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")

