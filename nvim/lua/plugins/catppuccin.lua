return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 998,
	lazy = false,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
