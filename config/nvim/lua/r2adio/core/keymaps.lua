local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- buffers
keymap("n", "<leader>bn", ":bn<cr>", opts)
keymap("n", "<leader>bp", ":bp<cr>", opts)
keymap("n", "<leader>bd", ":bd<cr>", opts)

-- quit nvim
-- keymap("n", "<leader>q", ":q<cr>", opts)

-- write to buffers
-- keymap("n", "<leader>w", ":w<cr>", opts)

-- primeagen
-- yank in system clipboard
keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
keymap("n", "<leader>Y", '"+Y', { noremap = true, silent = true })
keymap("x", "<leader>p", '"_dP', { noremap = true, silent = true })

-- give a menu, can start replacing the word was on.
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
-- keymap("n", "<leader>S", ":CtrlSF ", opts)
-- keymap("n", "<leader>sw", ":CtrlSF <C-r><C-w><cr>", opts)

-- make the script executable.
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
