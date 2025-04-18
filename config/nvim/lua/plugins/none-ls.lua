--[[
linting and formatting the code:
  * plenty of tools that handles linting and formmatting, but there is an issue.
    examples of linters and formatters are: rubocop, black, eslint, etc.
    issue is all the examples mentioned above are command line tools, and aren't language servers in and of themselves.

  * that's where null-ls helps
    - amazing pluginthat essentially wraps command line tools into a generalized lsp.
    - enabling easy communication b/w these tools and nvim's built-in lsp clients.
    - instead of installing different plugins to handle linting and formatting, we can just use null-ls to wrap our tools
      in a generalized language server and everything else just looks like another language server to nvim.

  * history lesson:
    - null-ls has been deprecated by the creator, could use null-ls anyways
    - none-ls has emerged as a great alternative, which is community managed fork of null-ls.
]]--

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        --for lua
				null_ls.builtins.formatting.stylua,

        --for js, prettier-> formatting and eslint_d-> diagnostics
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,

        --python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.flake8,

        --c/cpp
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.cpplint,
			},
		})
		--going to call format for the built-in lsp client for nvim
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
