return {
	"folke/todo-comments.nvim",
	optional = true,
	keys = {
		{
			"<leader>td",
			function()
				Snacks.picker.todo_comments({ keywords = { "Todo", "TODO", "FIX", "FIXME" } })
			end,
			desc = "Todo/Fix/Fixme",
		},
	},
}
