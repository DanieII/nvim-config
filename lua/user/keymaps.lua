-- Shorter names
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Space as leader
vim.g.mapleader = " "

-- Save file
keymap("n", "<leader>w", ":w<CR>", opts)

-- Toggle NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Navigate buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- Navigate between NvimTree and file
keymap("n", "<C-h>", "<C-w><Left>", opts)
keymap("n", "<C-l>", "<C-w><Right>", opts)

-- Telescope
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
