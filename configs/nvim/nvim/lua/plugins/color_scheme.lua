return {
	"luisiacc/gruvbox-baby",
	config = function()
		vim.g.gruvbox_baby_background_color = "dark"
		vim.g.gruvbox_baby_transparent_mode = 1
		vim.g.gruvbox_baby_telescope_theme = 1
		vim.g.gruvbox_baby_use_original_palette = 0
		vim.cmd.colorscheme("gruvbox-baby")
	end,
}
