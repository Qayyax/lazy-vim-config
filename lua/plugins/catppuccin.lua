-- https://github.com/catppuccin/nvim?tab=readme-ov-file

return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false, -- check important.md for more info
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			background = {
				dark = "macchiato",
			},
			transparent_background = false,
			neotree = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
			},
			-- custom_highlights = function(colors)
			-- 	return {
			-- 		Comment = { fg = colors.flamingo, bg = "#2a203f" },
			-- 	}
			-- end,
		})
		-- vim.cmd.colorscheme("catppuccin")
	end,
}
