-- Command Line UI
return {
	"folke/noice.nvim",
	-- event = "VeryLazy",
	presets = { inc_name = true },
	opts = {
		-- Default opts for now
		lsp = {
			override = {
				["vim.lep.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
			},
			filter = {
				event = "notify",
				find = "No Information available",
			},
			skip = true,
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
		-- require("notify").setup({
		--   background_colour = "#000000",
		-- }),
		opts = {
			timeout = 10000,
			-- background_colour = "#000000",
			render = "wrapped-compact",
		},
	},
}
