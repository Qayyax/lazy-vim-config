return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		animate = { enabled = true },
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		dashboard = {
			enabled = true,
			preset = {
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
					{ icon = "🔁", key = "u", desc = "Update Lazy", action = ":Lazy update <CR>" },
				},
				header = [[
 ██████╗  █████╗ ██╗   ██╗██╗   ██╗ █████╗ ██╗  ██╗
██╔═══██╗██╔══██╗╚██╗ ██╔╝╚██╗ ██╔╝██╔══██╗╚██╗██╔╝
██║   ██║███████║ ╚████╔╝  ╚████╔╝ ███████║ ╚███╔╝ 
██║▄▄ ██║██╔══██║  ╚██╔╝    ╚██╔╝  ██╔══██║ ██╔██╗ 
╚██████╔╝██║  ██║   ██║      ██║   ██║  ██║██╔╝ ██╗
 ╚══▀▀═╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝

     "You miss 100% of the shots you don't take"
      — Wayne Gretzky
      — Michael Scott
      ]],
			},
		},
		explorer = { enabled = true, {
			replace_netrw = true,
		} },
		picker = { enabled = true },
		indent = { enabled = true },
		git = { enabled = true },
		gitbrowse = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		notify = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		win = { enabled = true },
		words = { enabled = true },
		statuscolumn = { enabled = true },
	},
	keys = require("plugins.snacks.key"),
}
