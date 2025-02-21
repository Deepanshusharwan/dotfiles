-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("bootstrap")

require("settings")

require("numline")

require("lazy").setup("plugins")

local ftplugin_path = "ftplugin." -- Base module path

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local module = ftplugin_path .. args.match
		local ok, _ = pcall(require, module)
		if not ok then
			-- If no specific configuration exists, silently ignore
			-- Uncomment the line below for debugging purposes
			-- print("No configuration for filetype: " .. args.match)
		end
	end,
})

--highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking test",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { ".env", "wrangler.toml", ".dev.vars" },
	callback = function()
		vim.cmd("CloakEnable")
	end,
})
