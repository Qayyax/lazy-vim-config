return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			disable_move = true,
			shortcut_type = "letter",
			shuffle_letter = true,
			config = {
				week_header = {
					enable = true,
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
