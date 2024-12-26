local opts = { noremap = true, silent = true }

-- Space as leader
vim.g.mapleader = " "

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)

-- Navigating Windows
vim.keymap.set("n", "<C-h>", "<C-w><Left>")
vim.keymap.set("n", "<C-j>", "<C-w><Down>")
vim.keymap.set("n", "<C-k>", "<C-w><Up>")
vim.keymap.set("n", "<C-l>", "<C-w><Right>")

-- Select whole file
vim.keymap.set("n", "<C-y>", "ggVG")

-- Centered scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Moving highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copilot
vim.keymap.set("i", "<C-CR>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
