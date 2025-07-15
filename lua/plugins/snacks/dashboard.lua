return {
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
		footer = "Next Millionaire - Tife and Fuad",
	},
	sections = {
		{ section = "header", align = "center" },
		{ icon = " ", title = "Recent Files", section = "recent_files", padding = 1 },
		{ icon = " ", title = "Projects", section = "projects", padding = 1 },
		{
			icon = " ",
			title = "Git Status",
			section = "terminal",
			enabled = function()
				return Snacks.git.get_root() ~= nil
			end,
			cmd = "git status --short --branch --renames",
			height = 3,
			padding = 1,
			ttl = 5 * 60,
		},
		{ section = "keys", gap = 1, padding = 1 },
		{ section = "startup" },
	},
}
