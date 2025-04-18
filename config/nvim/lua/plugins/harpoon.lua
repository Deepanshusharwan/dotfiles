return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup({
        global_settings = {
          save_on_toggle = true,
          save_on_change = true,
          enter_on_sendcmd = false,
        },
      })

      -- Keybindings
      vim.keymap.set("n", "<leader>ha", function()
        require("harpoon.mark").add_file()
      end, { desc = "Add File to Harpoon" })

      vim.keymap.set("n", "<leader>hh", function()
        require("harpoon.ui").toggle_quick_menu()
      end, { desc = "Toggle Harpoon Menu" })

      vim.keymap.set("n", "<leader>h1", function()
        require("harpoon.ui").nav_file(1)
      end, { desc = "Navigate to File 1" })

      vim.keymap.set("n", "<leader>h2", function()
        require("harpoon.ui").nav_file(2)
      end, { desc = "Navigate to File 2" })

      vim.keymap.set("n", "<leader>h3", function()
        require("harpoon.ui").nav_file(3)
      end, { desc = "Navigate to File 3" })

      vim.keymap.set("n", "<leader>h4", function()
        require("harpoon.ui").nav_file(4)
      end, { desc = "Navigate to File 4" })
    end,
  },
}
