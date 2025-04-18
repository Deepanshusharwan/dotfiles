return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Optional, for file icons
    "MunifTanjim/nui.nvim", -- UI component library required by Neo-tree
  },

  config = function()
    -- Configure Neo-tree
    require("neo-tree").setup({
      close_if_last_window = true,  -- Close Neo-tree if it’s the last window open
      popup_border_style = "rounded",  -- Style for popup windows
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,  -- Show hidden files by default
          hide_gitignored = true,  -- Hide files ignored by Git
        },
        follow_current_file = true,  -- Update Neo-tree location to current file
        hijack_netrw_behavior = "open_current",  -- Replace netrw
      },
      window = {
      position = "right",  -- Opens Neo-tree on the right side
      width = 40,  -- Optional: Set the width of the Neo-tree window
      --":Neotree filesystem reveal right/left"OPTIONAL-comamnd-to-use-instead-to-changing-this.
      },
      buffers = {
        show_unloaded = true,
      },
      git_status = {
        window = {
          position = "float",
        },
      },
    }) 

    -- Keybinding to toggle Neo-tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree file explorer" })
    vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", { desc = "Focus Neo-tree" })

  end
}
