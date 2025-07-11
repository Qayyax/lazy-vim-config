-- https://github.com/catppuccin/nvim?tab=readme-ov-file

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			background = {
				dark = "mocha",
			},
			no_italic = false,
			no_bold = false,
			transparent_background = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
