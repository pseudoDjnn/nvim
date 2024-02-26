vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set -- Make a variable to map easier

-- General Mapping

-- Better navigation with "ctrl + h/j/k/l"
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Quick escape from insert mode
keymap("i", "jk", "<ESC>")

-- Clear Character and don't copy into register
keymap("n", "x", '"_x')

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>")

-- TAB buffer navigation
keymap("n", "<Tab>", "<C-w>l")
keymap("n", "<S-Tab>", "<C-w>h")

-- Move text in Visual Mode
keymap("x", "J", ":m '>+1<CR>gv=gv")
keymap("x", "K", ":m '<-2<CR>gv=gv")

-- Increment and Decrement numbers
keymap("n", "<leader>+", "<C-a>")
keymap("n", "<leader>-", "<C-x>")

-- Window splits (tmux-navigator)
keymap("n", "<leader>sv", "<C-w>v")         -- Vertical
keymap("n", "<leader>sh", "<C-w>s")         -- Horizontal
keymap("n", "<leader>se", "<C-w>=")         -- Equal width and height
keymap("n", "<leader>sx", "<cmd>close<CR>") -- Close the current split

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>rg", "<cmd>Telescope live_grep<cr>")
keymap("n", "<leader>gs", "<cmd>Telescope grep_string<cr>")
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- NvimTree
keymap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")

--LazyGit
keymap("n", "<Leader>lg", ":LazyGit<CR>")

-- Git Signs
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- Bufferline
keymap("n", "<Leader>bl", ":BufferLinePick<CR>")
keymap("n", "<Leader>bc", ":BufferLineCloseOthers<CR>")

-- LSP Config
keymap("n", "K", vim.lsp.buf.hover, {})
keymap("n", "gd", vim.lsp.buf.definition, {})
keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- None-ls
keymap("n", "<leader>rf", vim.lsp.buf.format, {})
