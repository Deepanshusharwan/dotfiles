return {
  "ellisonleao/glow.nvim",
  config = function()
    require("glow").setup({
      glow_path = "/opt/homebrew/bin/glow", -- Automatically detects glow binary in $PATH
      install_path = "~/local/bin", -- Default installation path for glow binary
      border = "shadow", -- Floating window border config
      style = "light", -- Overrides automatic style detection; set to "dark" or "light"
      pager = false, -- Disable pager
      width = 130, -- Default width for the Glow window
      height = 100, -- Default height for the Glow window
      width_ratio = 0.7, -- Max width as a ratio of the Neovim window
      height_ratio = 0.7 -- Max height as a ratio of the Neovim window
    })

    -- Keymap to trigger Glow with <leader>g
    vim.api.nvim_set_keymap('n', '<leader>//', ':Glow<CR>', { noremap = true, silent = true })
  end,
  cmd = "Glow"
}

