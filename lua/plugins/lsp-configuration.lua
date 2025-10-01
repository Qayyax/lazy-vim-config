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
			vim.lsp.enable("sourcekit")

			-- to link autocompletion to lsps check completions.lua

			-- lsp related Keybinds
			-- Docs: https://neovim.io/doc/user/lsp.html#vim.lsp.buf.definition()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "rename buffer" })
		end,
	},
}
