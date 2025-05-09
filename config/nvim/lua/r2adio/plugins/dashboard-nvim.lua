return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		-- Apply a single Kanagawa-style color to the header logo
		-- remove the comments infront of a theme to switch to it
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7E9CD8", bold = true }) -- WaveBlue
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#D27E99", bold = true }) -- SakuraPink
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#98BB6C", bold = true }) -- SpringGreen
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#FF5D62", bold = true }) -- PeachRed
		--	vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7FB4CA", bold = true }) -- CrystalBlue
		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ad7013", bold = true }) -- Amber-orange

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
				footer = (function()
					local quotes = {
						"🚀 Sharp tools make good work.",
						"Will code for snacks 🥪",
						"Crafted with care, edited in Neovim.",
						"Hack. Break. Fix. Repeat.",
						"To err is human. To blame it on Vim is tradition.",
						"There is no cloud. Just someone else's computer.",
						"Works on my machine™",
						"0% done, 100% committed.",
						"If I could, I would -- but I can't, so I shan't.",
						"Neovim: where escape is harder than real life.",
						"My code works… I have no idea why.",
						'printf("hello, chaos")',
					}
					math.randomseed(os.time())
					local pick = quotes[math.random(#quotes)]
					return { "", pick }
				end)(),
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
