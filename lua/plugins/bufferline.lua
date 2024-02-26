return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = "",
					},
				},
			},
		})
	end,
}
