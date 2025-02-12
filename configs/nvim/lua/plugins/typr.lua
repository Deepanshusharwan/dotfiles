return {
  {
    "nvzone/typr",
    dependencies = { "nvzone/volt" }, -- Wrap in a table for correct syntax
    opts = {
      winlayout = "responsive",
      kblayout = "qwerty",
      wpm_goal = 120,
      numbers = false,
      symbols = false,
      random = false,
      insert_on_start = false,
      stats_filepath = vim.fn.stdpath("config") .. "/typrstats",
      mappings = function(buf)
        vim.keymap.set("n", "<leader>tt", ":Typr<CR>", { buffer = buf, desc = "Start Typr" })
        vim.keymap.set("n", "<leader>ts", ":TyprStats<CR>", { buffer = buf, desc = "Show Typr Stats" })
      end,
    },
    cmd = { "Typr", "TyprStats" }, -- Lazy-load with these commands
  },
}
