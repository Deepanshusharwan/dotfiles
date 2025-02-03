return {
  --mason: install all lsp's.
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()

    end
  },
  --mason lsp-config: bridges gap b/w mason and nvim lsp-config, and gives ensure_installed property.
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require ("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "ts_ls", "pyright", "clangd"}
      })
    end
  },
  --nvim lsp-config: 
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require ("lspconfig")
      --lua
      lspconfig.lua_ls.setup({})
      --jsx
      lspconfig.ts_ls.setup({})
      --python
      lspconfig.pyright.setup({})
      --c/cpp
      lspconfig.clangd.setup({})
        capabilities = capabilities

      --display hover information about the symbol under the cursor
      --hover over stuff for documentation.
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      --
      vim.keymap.set('n', 'gd',vim.lsp.buf.definition, {})
      --code action:
      vim.keymap.set({'n', 'v'}, '<leader>ca',vim.lsp.buf.code_action, {})

    end
  }
}
