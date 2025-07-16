return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	vim.keymap.set("n", "<leader>t", ":TodoTelescope<CR>"),

	-- keywords are:
	-- TODO, HACK, WARN, PERF, NOTE, TEST
}
