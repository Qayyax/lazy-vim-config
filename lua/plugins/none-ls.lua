return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local null_ls = require("null-ls")

		null_ls.setup({
			-- Docs: (for the builtin formatters)
			-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.markdownlint,
				null_ls.builtins.formatting.swiftformat.with({
					extra_args = { "--commas", "never" },
				}),
				-- null_ls.builtins.diagnostics.swiftlint,
			},

			-- autoformat on save
			-- wiki: https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
			on_attach = function(client, bufnr)
				if client:supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								async = false,
								-- c for client, to make sure that we don't have formatting conflict with lsp
								filter = function(c)
									return c.name == "null-ls"
								end,
							})
						end,
					})
				end
			end,
		})
	end,
}
