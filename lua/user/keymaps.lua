local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Space as leader
vim.g.mapleader = " "

-- Save file
keymap("n", "<leader>w", ":w<CR>", opts)

-- Control buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<leader>bb", ":bd<CR>", opts)
keymap("n", "<leader>ba", ":%bd|e#|bd#<CR>|'\"", opts)

-- Shortcuts for Telescope
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>fg", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})

-- LSP
keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-h>", "<C-w><Left>", opts)
keymap("n", "<C-l>", "<C-w><Right>", opts)

keymap("n", "<A-y>", "ggVG", opts)
