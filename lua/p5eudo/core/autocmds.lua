--Based off of craftzdog's dotfiles
--Remeber LazyVim has defaults
--These additional cmds are just off of his 2024 dot


-- No pasting after leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave",{
  pattern = "*",
  command = "set nopaste"
})


