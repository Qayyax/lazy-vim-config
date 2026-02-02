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
			enabled = true,
			inline = true,
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
	},
}
