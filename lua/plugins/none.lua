return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				--Eslint will soon be removed, so plan for a break
        -- null_ls.builtins.code_actions.eslint,
				--null_ls.builtins.diagnostics.eslint_d,
			},
		})
	end,
}
