-- Environment variable
vim.env.FZF_DEFAULT_OPTS = '--layout=reverse'



-- Actual writing and not the test as shown above
-- buffer-scoped
vim.opt.autoindent = true


-- Global-scope
vim.opt.autowrite = true
vim.opt.autoread = true



local opt = vim.opt
-- vim.keymap.opt("n", "<leader>pv", vim.cmd.Ex)

-- Syntax Highlights
opt.hidden = true -- Required to keep multiple buffers open

-- Enable clipboard for our actual system
opt.clipboard = "unnamed, unnamedplus" -- Clipboard access

opt.backspace = '2'
opt.showcmd = true
opt.title = true -- Leave the title at the top
opt.guifont = "monospace:h17" -- Font update


-- Enable scrolling for our buffer within "8" lines
opt.sidescrolloff = "8"


-- Enable sign column all the time so plugins do not override
opt.signcolumn = "yes" -- Always show the sign column, text shifts if not
opt.showtabline = 1 -- Always show tabs


-- Faster completion (4000ms default) and auto completion opts
opt.updatetime = 50 -- Faster completion
opt.completeopt = "menuone, noselect" -- Completion options


-- Enable persistent undo
opt.undofile = true -- Persistent undo


-- Enable indenting 
opt.smartindent = true -- Make indents smart
opt.shiftwidth = 2 -- Space indentation


-- Smart indenting
--opt.breakindent = true -- Enable break indent



-- Enable incremental searching
opt.incsearch = true -- Makes search act like search in modern browsers
opt.hlsearch = true -- Highlight search results


-- Enable ignorecase and smartcase for better searching
opt.ignorecase = true -- Ignore the case and just search the word
opt.smartcase = true -- Smart case caps search
opt.ruler = false


--Enables relative line numbers
opt.number = true
opt.relativenumber = true


-- Enable termguicolors for colorscheme
opt.termguicolors = true -- Term gui support


-- Disable text wrap
opt.wrap = false  -- Display long lines as just one line
opt.encoding = 'utf-8' -- The encoding displayed
opt.pumheight = 10 -- Makes popup menu smaller
opt.fileencoding = 'utf-8' -- The encoding written to file


-- Set a colorcolumn width
-- opt.colorcolumn = "80"


-- Enable cursorline highlighting
opt.cursorline = true -- Enable highlighting of the current line
opt.ruler = true -- Show the cursor position all the time
opt.cmdheight = 1 -- More space for displaying messages
-- opt.iskeyword = '+', '=', '-' -- Treat dash separated words as a word text object--


-- Enable mouse mode
opt.mouse = "a" -- Enable your mouse


-- Enable better split windows
opt.splitbelow = true -- Horizontal splits will automatically be below
opt.splitright = true -- Vertical splits will automatically be to the right


opt.conceallevel = 0 -- So that I can see `` in markdown files



-- Set the tabs to 2 spaces
opt.tabstop = 2 -- Insert 2 spaces for a tab
opt.expandtab = true -- Converts tabs to spaces
opt.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
opt.softtabstop = 2 -- Insert 2 spaces for a tab
opt.laststatus = 2 --Always display the status line
--opt.number = true -- Line numbers
--opt.background = "dark" -- tell vim what the background color looks like
-- opt.noshowmode = false -- We don't need to see things like -- INSERT -- anymore
-- opt.nobackup = true -- This is recommended by coc
-- opt.nowritebackup= true -- This is recommended by coc
opt.timeoutlen = 1000 -- By default timeoutlen is 1000 ms

local fn = vim.api.nvim
if vim.fn.has('nvim-0.9') == 1 then
  print('Welcome to Neovim 0.9')
end


-- vim.cmd "opt whichwrap+=<,>,[,],h,1"
-- vim.cmd [[opt iskeyword+=-]]

vim.g.netew_banner = 0
vim.g.netrw_mouse = 2
