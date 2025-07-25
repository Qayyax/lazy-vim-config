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
				functions = { "bold" },
				operators = { "bold" },
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
