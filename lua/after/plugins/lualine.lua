return {
	"nvim-lualine/lualine.nvim",
  enabled = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				theme = "solarized_dark",
			},
		})
	end,
}
