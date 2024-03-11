--Color Theme
return {
	"craftzdog/solarized-osaka.nvim",
	lazy = true,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme solarized-osaka]])
	end,
	opts = {},
}
