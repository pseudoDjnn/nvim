-- Diable netrw
vim.g.loaded_netrew = 1
vim.g.loaded_netrwPlugin = 1

require("p5eudo.core.keymaps")
require("p5eudo.core.options")
require("p5eudo.lazy")

--TODO: Learn Lua well enough to embed neovim into VSCode and become the biggest loser of all time
-- local settings_file = vim.fn.stdpath('config') .. '/vscode/settings.vim' dofile(settings_file)
if vim.g.vscode then
  -- Vscode extension
  vim.cmd[[source $HOME/.config/nvim/vscode/settings.vim]]
  -- vim.cmd[[source $HOME/.config/nvim/utils/vscode_config/keybindings.json]]
  -- require('vscode/api')
  -- require('vscode/only-vscode')
else
  -- ordinary Neovim
end
