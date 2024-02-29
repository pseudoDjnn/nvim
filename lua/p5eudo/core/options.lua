-- vim.env.FZF_DEFAULT_OPTS = '--layout=reverse'

vim.g.netew_banner = 0
vim.g.netrw_mouse = 2

local opt = vim.opt


-- Set encoding
opt.encoding = 'utf-8'     -- The encoding displayed
opt.fileencoding = 'utf-8' -- The encoding written to file
vim.scriptencoding = 'utf-8' -- The encoding of scripts

-- Buffer-scoped and indenting
opt.title = true              -- Leave the title at the top
opt.autoindent = true         -- Enable autoindent
opt.smartindent = true -- Make indents smart

-- Sgt the tabs to 2 spaces
opt.tabstop = 2      -- Insert 2 spaces for a tab
opt.expandtab = true -- Converts tabs to spaces
opt.smarttab = true  -- Makes tabbing smarter will realize you have 2 vs 4
opt.softtabstop = 2  -- Insert 2 spaces for a tab

opt.ttimeoutlen = 0
opt.wildmenu = true


-- Global-scope
opt.autowrite = true
opt.autoread = true


-- Syntax Highlights
opt.hidden = true -- Required to keep multiple buffers open

-- Enable clipboard for our actual system
opt.clipboard = "unnamedplus" -- Clipboard access

opt.backspace = { "indent", "eol", "start" } -- Allow backspacing over everything in insert mode
opt.showcmd = true
opt.cmdheight = 0     -- More space for displaying messages
opt.inccommand = "split" -- Make substitution work in realtime
opt.pumheight = 10         -- Makes popup menu smaller
vim.o.guifont = "JetBrains Nerf Font" -- Font update


-- Enable scrolling for our buffer within "8" lines
opt.sidescrolloff = 10


-- Enable sign column all the time so plugins do not override
opt.signcolumn = "yes" -- Always show the sign column, text shifts if not
opt.showtabline = 1    -- Always show tabs
opt.shiftwidth = 2     -- Space indentation


-- Faster completion (4000ms default) and auto completion opts
opt.updatetime = 50                   -- Faster completion
opt.completeopt = "noinsert,menuone,noselect" -- Completion options


-- Enable persistent undo
opt.undofile = true -- Persistent undo




-- Enable incremental searching
opt.incsearch = true -- Makes search act like search in modern browsers
opt.hlsearch = true  -- Highlight search results in buffer

-- Enable ignorecase and smartcase for better searching
opt.ignorecase = true -- Ignore the case and just search the word
opt.smartcase = true  -- Smart case caps search
--opt.ruler = false    -- Disable the ruler for performance
opt.breakindent = true -- Enable break indent


--Enables relative line numbers
opt.number = true
opt.relativenumber = true


-- Enable termguicolors for colorscheme
opt.termguicolors = true -- Term gui support


-- Disable text wrap
opt.wrap = false           -- Display long lines as just one line



-- Enable cursorline highlighting
opt.cursorline = true -- Enable highlighting of the current line
opt.ruler = true      -- Show the cursor position all the time


-- Enable mouse mode
opt.mouse = "a" -- Enable your mouse


-- Enable better split windows
opt.splitbelow = true -- Horizontal splits will automatically be below
opt.splitright = true -- Vertical splits will automatically be to the right
opt.splitkeep = "cursor" -- When opening a new split, keep the cursor in the current window 


opt.conceallevel = 0 -- So that I can see `` in markdown files
opt.foldexpr = "nvim_treesitter#foldexpr()" -- TreeSitter folding'
opt.foldmethod = "manual" -- TreeSitter folding'



opt.laststatus = 0   --Always display the status line
opt.background = "dark" -- tell vim what the background color looks like
opt.timeoutlen = 1000 -- By default timeoutlen is 1000 ms

opt.formatoptions:append({"r"})

local fn = vim.api.nvim
if vim.fn.has('nvim-0.9') == 1 then
	print('Welcome <p5eudo>')
end




-- vim.cmd "opt whichwrap+=<,>,[,],h,1"
-- vim.cmd [[opt iskeyword+=-]]

