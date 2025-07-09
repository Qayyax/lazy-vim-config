return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- Docs: https://github.com/mason-org/mason-lspconfig.nvim?tab=readme-ov-file#default-configuration
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = { "lua_ls", "ts_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- Enable installed lsp
			--  Docs: https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#vimlspconfig
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("ts_ls")

			-- to link autocompletion to lsps
			-- check completions.lua
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			-- use the lsps we have enabled
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			-- lsp related Keybinds
			-- Docs: https://neovim.io/doc/user/lsp.html#vim.lsp.buf.definition()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Show code definitions" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Show code references" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "rename buffer" })
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
		end,
	},
}
