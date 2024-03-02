return {
	"akinsho/bufferline.nvim",
  event = "VeryLazy",
  -- enabled = false,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
        show_buffer_close_icons = false,
        show_close_icon = false,
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = "",
					},
				},
			},
		})
	end,
}
