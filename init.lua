-- Diable netrw
vim.g.loaded_netrew = 1
vim.g.loaded_netrwPlugin = 1

require "lavah.core.keymaps"
require "lavah.core.options"


--Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
--Lazy options
--local opts = {}

-- "Require "Lazy
require("lazy").setup("plugins")

--TODO: Learn Lua well enough to embed neovim into VSCode and become the biggest loser of all time
if vim.g.vscode then
  -- Vscode extension
  vim.cmd[[source $HOME/.config/nvim/vscode/settings.vim]]
 -- require('vscode/api')
 -- require('vscode/only-vscode')
else
  -- ordinary Neovim
end


