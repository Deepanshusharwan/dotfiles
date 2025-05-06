return {
	-- "catppuccin/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,

	config = function()
		-- vim.cmd.colorscheme "catppuccin"

		-- Default options:
		require("kanagawa").setup({
			compile = true, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "wave", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "lotus",
			},
			-- themes/background options: wave, dragon, lotus.
		})
		vim.cmd.colorscheme("kanagawa")

		--number lin:
		-- removes brown strip
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
		-- Set the background color for the line number column
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "#2E2E2E" })
		-- Set the color for the current line number
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ADD8E6" })
		--
		vim.opt.cursorline = true
		-- Set the color for the relative line numbers
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#A9A9A9" })
	end,
}
