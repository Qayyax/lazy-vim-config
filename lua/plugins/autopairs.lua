-- Docs: https://github.com/windwp/nvim-autopairs
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		enable_check_bracket_line = false,
		fast_wrap = {}, -- <M-e>
	},
	config = true,
}
