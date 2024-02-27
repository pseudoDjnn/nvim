return {
	--Install the LSP onto the server
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	--Better communication between Mason and the LSP
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"tsserver",
				},
			})
		end,
	},
	--Modularity of Sorts
	{
		"neovim/nvim-lspconfig",
		config = function()
			--cmp-nvim-lsp attachment
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,

			})
		end,
	},
}
