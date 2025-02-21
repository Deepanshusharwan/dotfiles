--[[autocompletions and snippets:

  * nvim-cmp:
    - completion engine for nvim, written in lua.
    - plugin that'll will show the completion list while typing.
    - sources for these completions are installed from exteernal repositories and sourced.
    - only for completions, and still requires third patry plugins for sources, like snippets.
  * lspsnip:
    - a snippet engine for nvim, written in lua
    - use luasnip, as both a source of snippets for nvim-cmp,
      and as the snippet expansion toolfor nvim-cmp.
  * cmp_luasnip:
    - is a luasnip completion source for nvim-cmp.
    - this plugin is responsible for supplying nvim-cmp with a list of possible snippets while typing.
  * friendly snippets:
    - collection of vs code like snippets that can be loaded by luasnip,
      essentially adding vs code snippets to luasnip.
  * cmp-nvim-lsp:
    - a completion source for nvim-cmp, that displays the built-in lsp completions,
      offered by whatever lsp is attached to the buffer.
    - this add an additional layer to lsp sources, giving them the ability to report
      completions to nvim-cmp
]]
--

--nvim-cmp: this powers the window you sees while typing, where you can select snippets and completions.

return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local lspconfig = require("lspconfig")
			local mason = require("mason")
			require("luasnip/loaders.from_vscode").lazy_load()

			-- Set up LSP servers using mason
			mason.setup()
			lspconfig.clangd.setup({}) -- For C and C++
			lspconfig.pyright.setup({}) -- For Python
			lspconfig.lua_ls.setup({}) -- For Lua (using lua_ls)
			lspconfig.ts_ls.setup({}) -- For js, jsx

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = {
					-- hjkl navigation
					["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-h>"] = cmp.mapping.scroll_docs(-4),
					["<C-l>"] = cmp.mapping.scroll_docs(4),

					-- Confirm selection
					["<CR>"] = cmp.mapping.confirm({ select = true }),

					-- Trigger completion menu
					["<C-Space>"] = cmp.mapping.complete(),

					-- Abort the completion menu
					["<C-e>"] = cmp.mapping.abort(),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "buffer" },
					{ name = "path" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
