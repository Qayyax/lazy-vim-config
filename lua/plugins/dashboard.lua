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
						icon = " ",
						desc = "Show your files",
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
				project = {
					enable = false,
				},
				packages = { enable = false },
				mru = {
					enable = true,
					limit = 10,
					icon = "🤔 ",
					label = "You were just here bruv",
					cwd_only = false,
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
