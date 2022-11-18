vim.g.mapleader = " "

local keymap = vim.keymap

--general keymap
keymap.set("i", "jk", "<ESC>") -- while in insert mode, type jk to esc
keymap.set("n", "<leader>nh", ":nohl<CR>") -- while in normal mode, type nh to clear search
keymap.set("n", "x", "_x") -- while in normal mode, type x to delete but without copying to register
keymap.set("n", "<leader>+", "<C-a>") -- while in normal mode, use leader + to increment an integer
keymap.set("n", "<leader-", "<C-x>") -- while in normal mode, user leader - to decrement an integer
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
