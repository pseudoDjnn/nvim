return {
	"folke/lsp-colors.nvim",
	"folke/trouble.nvim",
	lazy = true,
	config = function()
		require("lsp-colors").setup({
			Error = "#db4b4b",
			Warning = "#e0af68",
			Information = "#0db9d7",
			Hint = "#10B981",
		})
		require("trouble").setup()
	end,
}
