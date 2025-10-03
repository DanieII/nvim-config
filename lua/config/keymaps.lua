local opts = { noremap = true, silent = true }

-- Space as leader
vim.g.mapleader = " "

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)

-- Select whole file
vim.keymap.set("n", "<D-a>", "ggVG")

-- Centered scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Moving highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pasting
vim.keymap.set("v", "p", '"_dP', opts)
vim.keymap.set("n", "<C-p>", "o<Esc>p", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><Left>", opts)
vim.keymap.set("n", "<C-j>", "<C-w><Down>", opts)
vim.keymap.set("n", "<C-k>", "<C-w><Up>", opts)
vim.keymap.set("n", "<C-l>", "<C-w><Right>", opts)
