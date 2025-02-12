--number lin:
-- removes brown strip
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
-- Set the background color for the line number column
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#2E2E2E" })
-- Set the color for the current line number
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#6E7991" })
--
vim.opt.cursorline = true
-- Set the color for the relative line numbers
vim.api.nvim_set_hl(0, "LineNr", { fg = "#A9A9A9" })
