-- https://github.com/catppuccin/nvim?tab=readme-ov-file

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			background = {
				dark = "macchiato",
			},
			transparent_background = true,
			neotree = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				operators = { "bold" },
				functions = { "bold" },
			},
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.flamingo, bg = "#2a203f" },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
