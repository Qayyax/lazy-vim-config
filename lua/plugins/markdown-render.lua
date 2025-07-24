return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	opts = {
		completions = { lsp = { enabled = true } },
		heading = {
			backgrounds = { "RenderMarkdownHdNoBg" },
			position = "inline",
		},
		code = {
			backgrounds = { "RenderMarkdownHdNoBg" },
			position = "left",
			style = "language",
			border = "hide",
			above = "",
			below = "",
			conceal_delimeters = true,
		},
		callout = {
			note = { highlight = "RenderMarkdownHdNoBg" },
			tip = { highlight = "RenderMarkdownHdNoBg" },
			important = { highlight = "RenderMarkdownHdNoBg" },
			warning = { highlight = "RenderMarkdownHdNoBg" },
			danger = { highlight = "RenderMarkdownHdNoBg" },
		},
		quote = {
			highlight = "RenderMarkdownHdNoBg",
		},
		-- Turn off sign backgrounds if you want
		-- sign = {
		-- 	enabled = false,
		-- },
	},
}
