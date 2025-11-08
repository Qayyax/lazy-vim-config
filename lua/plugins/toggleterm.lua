return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,

	-- keymaps
	vim.keymap.set("n", "<leader>tt", ":ToggleTerm "),
	vim.keymap.set("n", "<leader>ta", ":ToggleTermToggleAll<CR>"),
	vim.keymap.set("n", "<leader>tn", ":ToggleTermSetName<CR>"),
}
