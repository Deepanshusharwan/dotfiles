return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		-- Key mappings
		vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "Toggle Harpoon quick menu" })

		-- Dynamic navigation function
		local function navigate_to_harpoon_file(index)
			return function()
				-- Get total number of marked files
				local total_marks = mark.get_length()

				-- Only navigate if the index is within the number of marked files
				if index <= total_marks then
					ui.nav_file(index)
				else
					print(string.format("No file marked at index %d", index))
				end
			end
		end

		-- Create keymaps for first 9 files
		for i = 1, 9 do
			vim.keymap.set(
				"n",
				string.format("<leader>h%d", i),
				navigate_to_harpoon_file(i),
				{ desc = string.format("Navigate to Harpoon file %d", i) }
			)
		end
	end,
	-- "ThePrimeagen/harpoon",
	-- branch = "harpoon2",
	-- dependencies = { "nvim-lua/plenary.nvim" },
	-- config = function()
	-- 	local harpoon = require("harpoon")
	--
	-- 	-- Initialize Harpoon
	-- 	harpoon:setup({
	-- 		-- Optional custom configuration
	-- 		settings = {
	-- 			save_on_toggle = true,
	-- 			sync_on_ui_close = true,
	-- 		},
	-- 	})
	-- 	-- basic telescope configuration
	-- 	local conf = require("telescope.config").values
	-- 	local function toggle_telescope(harpoon_files)
	-- 		local file_paths = {}
	-- 		for _, item in ipairs(harpoon_files.items) do
	-- 			table.insert(file_paths, item.value)
	-- 		end
	--
	-- 		require("telescope.pickers")
	-- 			.new({}, {
	-- 				prompt_title = "Harpoon",
	-- 				finder = require("telescope.finders").new_table({
	-- 					results = file_paths,
	-- 				}),
	-- 				previewer = conf.file_previewer({}),
	-- 				sorter = conf.generic_sorter({}),
	-- 			})
	-- 			:find()
	-- 	end
	--
	-- 	-- Key mappings (new style)
	-- 	vim.keymap.set("n", "<leader>a", function()
	-- 		harpoon:list():append()
	-- 	end, { desc = "Add file to Harpoon" })
	--
	-- 	vim.keymap.set("n", "<C-e>", function()
	-- 		toggle_telescope(harpoon:list())
	-- 	end, { desc = "Open harpoon window" })
	--
	-- 	vim.keymap.set("n", "<leader>hh", function()
	-- 		harpoon.ui:toggle_quick_menu(harpoon:list())
	-- 	end, { desc = "Toggle Harpoon quick menu" })
	--
	-- 	-- Navigation (supports multiple lists)
	-- 	vim.keymap.set("n", "<C-h>", function()
	-- 		harpoon:list():select(1)
	-- 	end)
	-- 	vim.keymap.set("n", "<C-j>", function()
	-- 		harpoon:list():select(2)
	-- 	end)
	-- 	vim.keymap.set("n", "<C-k>", function()
	-- 		harpoon:list():select(3)
	-- 	end)
	-- 	vim.keymap.set("n", "<C-l>", function()
	-- 		harpoon:list():select(4)
	-- 	end)
	-- end,
}
