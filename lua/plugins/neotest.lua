-- NOTE:
-- Go related
-- Docs: https://www.sambaiz.net/en/article/502/

return {
	"nvim-neotest/neotest",
	tag = "v5.6.1",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-go",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-go")({
					args = { "-coverprofile=coverage.out" },
				}),
			},
		})
	end,
	vim.keymap.set("n", "<Leader>gt", ':lua require("neotest").run.run()<CR>', { desc = "Run test" }),
}
