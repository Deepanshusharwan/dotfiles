--treesitter handles syntax highlighting, incremental parsing, etc.

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function ()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- ensure_installed = { "c", "lua", "vim", "javascript", "cpp"},
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
    })

  end
}
