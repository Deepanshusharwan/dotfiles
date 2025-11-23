return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local capabilities = cmp_nvim_lsp.default_capabilities()

		---------------------------------------------------------------------------
		-- LSP keymaps
		---------------------------------------------------------------------------
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				local keymap = vim.keymap

				opts.desc = "Show LSP references"
				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Go to declaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

				opts.desc = "Show definitions"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Show implementations"
				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Show type definitions"
				keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "Code actions"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				opts.desc = "Rename"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Show buffer diagnostics"
				keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

				opts.desc = "Show line diagnostics"
				keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

				opts.desc = "Prev diagnostic"
				keymap.set("n", "[d", function()
					vim.diagnostic.goto_prev()
				end, opts)

				opts.desc = "Next diagnostic"
				keymap.set("n", "]d", function()
					vim.diagnostic.goto_next()
				end, opts)

				opts.desc = "Hover docs"
				keymap.set("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "Restart LSP"
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
			end,
		})

		---------------------------------------------------------------------------
		-- Diagnostic icons
		---------------------------------------------------------------------------
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			vim.fn.sign_define("DiagnosticSign" .. type, { text = icon, texthl = "DiagnosticSign" .. type })
		end

		---------------------------------------------------------------------------
		-- LSP SERVER DEFINITIONS
		---------------------------------------------------------------------------
		local servers = {
			html = {},
			cssls = {},
			tailwindcss = {},
			svelte = {},
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						completion = { callSnippet = "Replace" },
					},
				},
			},
			graphql = {
				filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
			},
			emmet_ls = {
				filetypes = {
					"html",
					"typescriptreact",
					"javascriptreact",
					"css",
					"sass",
					"scss",
					"less",
					"svelte",
				},
			},
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = { enabled = false, maxLineLength = 100 },
							pyflakes = { enabled = false },
							autopep8 = { enabled = false },
							yapf = { enabled = false },
							mccabe = { enabled = false },
							pylsp_mypy = { enabled = true },
							pylsp_black = { enabled = false },
							pylsp_isort = { enabled = false },
							rope = { enabled = false },
							rope_autoimport = { enabled = false },
						},
					},
				},
			},
		}

		---------------------------------------------------------------------------
		-- REGISTER + ENABLE SERVERS (new API)
		---------------------------------------------------------------------------
		for name, cfg in pairs(servers) do
			cfg.capabilities = capabilities

			-- Register server config
			vim.lsp.config[name] = cfg

			-- Enable server so it auto-attaches
			vim.lsp.enable(name)
		end

		---------------------------------------------------------------------------
		-- Disable hover for Ruff (same as your version)
		---------------------------------------------------------------------------
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client and client.name == "ruff" then
					client.server_capabilities.hoverProvider = false
				end
			end,
		})

		---------------------------------------------------------------------------
		-- Diagnostics config
		---------------------------------------------------------------------------
		vim.diagnostic.config({
			virtual_text = { current_line = true },
			float = { border = "rounded" },
			update_in_insert = false,
			severity_sort = true,
		})
	end,
}

