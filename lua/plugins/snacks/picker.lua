return {
	-- Docs : https://ricoberger.de/blog/posts/neovim-extend-snacks-nvim-explorer/
	enabled = true,
	ui_select = true,
	sources = {
		explorer = {
			auto_close = true,
			layout = {
				preset = "default",
				preview = true,
			},
		},
	},
	exclude = {
		".git",
		"node_modules",
	},
}
