--source: thevimeagen (yt: teaching nvim from scratch to a noob)
return {
  "laytan/cloak.nvim",
  config = function ()
    require("cloak").setup({
      enable = true,
      cloak_character = "*",
      --the applied highlight group (colors) on the cloaking, see `:h highlight`.
      highlight_group = "Comment",
      patterns = {
        {
          --match any file starting with ".env".
          --this can be a table to match multiple file patterns.
          file_pattern = {
            ".env",
            "wrangler.toml",
            ".dev.vars",
          },
          --match an equals sign and any character after it.
          --this can be a table of patterns to cloak,
          --example: cloak_pattern = { ":.+", "-.+"} for yaml files.
          cloak_pattern = "=.+"
        },
      },
    })
  end
}
