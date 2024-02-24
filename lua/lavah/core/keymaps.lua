vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set -- Make a variable to map easier

-- General Mapping

keymap("i", "jk", "<ESC>")

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>")

-- Clear Character and don't copy into register
keymap("n", "x", '"_x')

-- Increment and Decrement numbers
keymap("n", "<leader>+", "<C-a>")
keymap("n", "<leader>-", "<C-x>")

-- Window splits
keymap("n", "<leader>sv", "<C-w>v") -- Vertical
keymap("n", "<leader>sh", "<C-w>s") -- Horizontal
keymap("n", "<leader>se", "<C-w>=") -- Equal width and height
keymap("n", "<leader>sx", "<cmd>close<CR>") -- Close the current split

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
