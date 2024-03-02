--Treesitter (Syntax highlighting and more)
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
  event = { "BufRead", "BufNewFile" },
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = {
        "markdown",
        "markdown_inline",
        "bash",
        "vim",
        "lua",
        "gitignore"
      },
			highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
			indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true,
      },
		})
	end,
}
