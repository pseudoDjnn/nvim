vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set -- Make a variable to map easier
local opts = { noremap = true, silent = true }

-- General Mapping
--
-- Save file, save all files, quit, save and quit
keymap("n", "<leader>w", ":update<Return>")
keymap("n", "<leader>wa", ":wa<Return>")
keymap("n", "<leader>q", ":quit<Return>")
keymap("n", "<leader>~", ":wa<Return>:q<Return>")

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

-- TAB buffer navigation (now works with bufferline.lua)
keymap("n", "<tab>", "<Cmd>BufferLineCycleNext<Return>")
keymap("n", "<s-tab>", "<Cmd>BufferLineCyclePrev<Return>")

-- Move text in Visual Mode
keymap("x", "J", ":m '>+1<CR>gv=gv")
keymap("x", "K", ":m '<-2<CR>gv=gv")

-- Increment and Decrement numbers
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Diagnostics
keymap("n", "<C-j>", function()
  vim.lsp.diagnostic.goto_next({ wrap = true })
end, opts)



-- Plugin Mapping
-- Bufferline
keymap("n", "<Leader>bl", ":BufferLinePick<CR>")  --Secondary buffer picker
keymap("n", "<Leader>bc", ":BufferLineCloseOthers<CR>")

-- Git Signs
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

--LazyGit
keymap("n", "<Leader>lg", ":LazyGit<CR>")

-- None-ls
keymap("n", "<leader>rf", vim.lsp.buf.format, { desc = "reformat"})

-- NvimTree
keymap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")

-- LSP Config
keymap("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Telescope
keymap("n", "<leader>ff", "<cmd>Tele find_files<cr>")
keymap("n", "<leader>rg", "<cmd>Telescope live_grep<cr>")
keymap("n", "<leader>gs", "<cmd>Telescope grep_string<cr>")
keymap("n", "<leader>fb", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Tmux-navigator
keymap("n", "<leader>sh", "<C-w>s", { desc = "Horizontal split" })         -- Horizontal
keymap("n", "<leader>sv", "<C-w>v", { desc = "Vertical split" })         -- Vertical
keymap("n", "<leader>se", "<C-w>=", { desc = "Equal splits" })         -- Equal width and height
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close the current split" }) -- Close the current split


