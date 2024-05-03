return {
	{
		-- indent guides for Neovim
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowTeal",
				"RainbowGreen",
				"RainbowOrange",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#811b17" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#9d7721" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#315557" })
				vim.api.nvim_set_hl(0, "RainbowTeal", { fg = "#5c7950" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#626015" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#873d0e" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#714056" })
			end)

			local ibl = require("ibl")
			ibl.setup({
				indent = {
					char = "│",
					tab_char = "│",
					highlight = highlight,
				},
				scope = {
					enabled = false,
				},
				vim.opt.listchars:append("space: "),
			})
		end,
	},
	--{
	--"echasnovski/mini.indentscope",
	--version = false, -- wait till new 0.7.0 release to put it back on semver
	--event = { "BufReadPre", "BufNewFile" },
	--opts = {
	--	symbol = "│",
	--	options = { try_as_border = true },
	--},
	--init = function()
	--	vim.api.nvim_create_autocmd("FileType", {
	--		pattern = {
	--			"help",
	--			"alpha",
	--			"dashboard",
	--			"neo-tree",
	--			"Trouble",
	--			"lazy",
	--			"mason",
	--			"notify",
	--			"toggleterm",
	--			"lazyterm",
	--		},
	--		callback = function()
	--			vim.b.miniindentscope_disable = true
	--		end,
	--	})
	--end,
	--},
}
