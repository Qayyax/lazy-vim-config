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
				header = {
					" ██████╗  █████╗ ██╗   ██╗██╗   ██╗ █████╗ ██╗  ██╗",
					"██╔═══██╗██╔══██╗╚██╗ ██╔╝╚██╗ ██╔╝██╔══██╗╚██╗██╔╝",
					"██║   ██║███████║ ╚████╔╝  ╚████╔╝ ███████║ ╚███╔╝ ",
					"██║▄▄ ██║██╔══██║  ╚██╔╝    ╚██╔╝  ██╔══██║ ██╔██╗ ",
					"╚██████╔╝██║  ██║   ██║      ██║   ██║  ██║██╔╝ ██╗",
					" ╚══▀▀═╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝",
					"",
					'     "You miss 100% of the shots you don\'t take."',
					"      — Wayne Gretzky",
					"      — Michael Scott",
					"  ",
					"  ",
					"  ",
				},
				shortcut = {
					{
						icon = "🔥 ",
						desc = "Qayyax Zone",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						icon = " ",
						desc = "Nvim Settings",
						group = "Label",
						action = "e ~/.config/nvim/init.lua",
						key = "s",
					},
					{
						icon = "🤫 ",
						desc = "Update Plugins",
						group = "Label",
						action = "Lazy update",
						key = "u",
					},
				},
				footer = {
					" ",
					"Next millionaire - Tife and Fuad",
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
