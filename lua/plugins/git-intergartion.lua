return {
	--Fugitive
	{
		"tpope/vim-fugitive",
	},
	--Git Signs for better staging
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
