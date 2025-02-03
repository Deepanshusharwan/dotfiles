return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      local dashboard = require("dashboard")

      -- Custom ASCII logo
      local logo = [[
        ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
        ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
        ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
        ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
        ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
        ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
      ]]

      -- Dynamically calculate padding for vertical centering
      local height = vim.o.lines
      local logo_lines = vim.split(logo, "\n")
      local empty_lines = math.floor((height - #logo_lines) / 3)

      -- Add small padding below the logo (e.g., 2 extra lines)
      local small_padding_below_logo = 2

      -- Create padding for the header (before the logo and a small amount below)
      local padded_logo = string.rep("\n", empty_lines) .. logo .. string.rep("\n", small_padding_below_logo)

      dashboard.setup({
        theme = "doom", -- Use the doom theme
        config = {
          header = vim.split(padded_logo, "\n"), -- Add your custom logo with dynamic padding
          center = {
            { icon = "󰈞  ", desc = "Find File           ", action = "Telescope find_files", key = "f" },
            { icon = "  ", desc = "New File            ", action = "ene!", key = "e" },
            { icon = "󰄉  ", desc = "Recent Files        ", action = "Telescope oldfiles", key = "r" },
            { icon = "󰊄  ", desc = "Find Text           ", action = "Telescope live_grep", key = "t" },
            { icon = "  ", desc = "Configuration       ", action = "edit ~/.config/nvim/init.lua", key = "c" },
            { icon = "  ", desc = "Update plugins      ", action = ":Lazy sync", key = "u" },
            { icon = "  ", desc = "Quit                ", action = "qa", key = "q" },
          },
          footer = { " Powered by Neovim 0.10.3" },
        },
      })
      vim.api.nvim_command('highlight DashboardHeader guifg=#606A57')
      vim.api.nvim_command('highlight DashboardCenter guifg=#50FA7B')
      vim.api.nvim_command('highlight DashboardFooter guifg=#CBE5F6')
    end,
  },
}

