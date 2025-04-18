return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local builtin = require ("telescope.builtin")
      -- Optionally load Telescope extensions (if any are installed)
      -- require('telescope').load_extension('fzf')
      -- Keybindings to launch Telescope
      vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find Files' })
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Live Grep' })
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'List Buffers' })
      -- vim.keymap.set('n', '<leader>bn', require('telescope.builtin').buffers, { desc = 'Next  Buffers' })
      -- vim.keymap.set('n', '<leader>bp', require('telescope.builtin').buffers, { desc = 'Previous Buffers' })
      -- vim.keymap.set('n', '<leader>bd', require('telescope.builtin').buffers, { desc = 'delete Buffers' })
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Help Tags' })
      -- Buffer navigation
      vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next Buffer' })
      vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous Buffer' })
      -- Delete buffer
      vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete Buffer' })
      --to search from help meun
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function ()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({})
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
