-- Use space as the leader key 'global variable'
vim.g.mapleader = " "

-- lua's way to use certain varibles in vimscript
-- vim.g['zoom#statustext'] = 'Z'

-- environment variable
vim.env.FZF_DEFAULT_OPTS = '--layout=reverse'



-- Actual writing and not the test as shown above
-- buffer-scoped
vim.opt.autoindent = true

-- window-scoped
vim.opt.cursorline = true

-- global-scope
vim.opt.autowrite = true
vim.opt.autoread = true

-- opt leader key
-- let g:mapleader = --\<Space>--
local opt = vim.opt
-- vim.keymap.opt("n", "<leader>pv", vim.cmd.Ex)

-- Syntax Highlights
opt.hidden = true -- Required to keep multiple buffers open
opt.clipboard = "unnamedplus" -- Clipboard access
opt.backspace = '2'
opt.showcmd = true
opt.shiftwidth = 2 -- Space indentation
opt.title = true -- Leave the title at the top
opt.guifont = "monospace:h17" -- Font update
opt.sidescrolloff = 8
opt.signcolumn = "yes" -- Always show the sign column, text shifts if not
opt.showtabline = 1 -- Always show tabs
opt.updatetime = 100 -- Faster completion
opt.smartindent = true -- Make indents smart
opt.smartcase = true -- Smart case caps search
opt.ignorecase = true -- Ignore the case and just search the word
opt.ruler = false
opt.relativenumber = true -- Set the relative nuber so you can look cool and still not be able to code
opt.termguicolors = true -- Term gui support
-- opt.softtabstop = 2
opt.expandtab = true
opt.wrap = false  -- Display long lines as just one line
opt.encoding = 'utf-8' -- The encoding displayed
opt.pumheight = 10 -- Makes popup menu smaller
opt.fileencoding = 'utf-8' -- The encoding written to file
-- opt.colorcolumn = "10"
opt.ruler = true -- Show the cursor position all the time
opt.cmdheight = 1 -- More space for displaying messages
-- opt.iskeyword = '+', '=', '-' -- Treat dash separated words as a word text object--
opt.mouse = "a" -- Enable your mouse
opt.splitbelow = true -- Horizontal splits will automatically be below
opt.splitright = true -- Vertical splits will automatically be to the right
opt.conceallevel = 0 -- So that I can see `` in markdown files
opt.tabstop = 2 -- Insert 2 spaces for a tab
opt.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
opt.expandtab = true -- Converts tabs to spaces
-- opt.autoindent = true -- Good auto indent
opt.laststatus = 2 --Always display the status line
opt.number = true -- Line numbers
opt.cursorline = true -- Enable highlighting of the current line
opt.background = "dark" -- tell vim what the background color looks like
-- opt.noshowmode = false -- We don't need to see things like -- INSERT -- anymore
-- opt.nobackup = true -- This is recommended by coc
-- opt.nowritebackup= true -- This is recommended by coc
opt.timeoutlen = 1000 -- By default timeoutlen is 1000 ms

if vim.fn.has('nvim-0.9') == 1 then
  print('we got neovim 0.9')
end


-- vim.cmd "opt whichwrap+=<,>,[,],h,1"
-- vim.cmd [[opt iskeyword+=-]]

vim.g.netew_banner = 0
vim.g.netrw_mouse = 2
