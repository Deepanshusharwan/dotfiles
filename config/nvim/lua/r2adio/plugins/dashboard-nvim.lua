return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		-- Apply a single Kanagawa-style color to the header logo
		-- remove the comments infront of a theme to switch to it
		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7E9CD8", bold = true }) -- WaveBlue
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#D27E99", bold = true }) -- SakuraPink
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#98BB6C", bold = true }) -- SpringGreen
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#FF5D62", bold = true }) -- PeachRed
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7FB4CA", bold = true }) -- CrystalBlue

		require("dashboard").setup({
			-- theme = "hyper", -- default is hyper
			disable_move = false,
			shortcut_type = "letter",
			shuffle_letter = false,
			change_to_vcs_root = true,
			config = {
				header = {
					"",
					"",
					" ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
					" ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
					" ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
					" ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
					" ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
					" ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
					"",
				},
				shortcut = {
					{
						icon = " ",
						desc = "Github",
						group = "Label",
						action = 'silent !xdg-open "https://github.com/deepanshusharwan" &',
						key = "G",
					},
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						desc = "󰛉 Close",
						group = "Label",
						action = "silent :q",
						key = "q",
					},
				},
			},
			hide = {
				statusline = true,
				tabline = true,
				winbar = true,
			},
		})
	end,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
}
