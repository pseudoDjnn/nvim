return {
	"Wansmer/treesj",
	key = {
    "<leader>m",
    "<leader>j",
    "<leader>p",
  },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("treesj").setup()
	end,
}
