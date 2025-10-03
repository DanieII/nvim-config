-- Enable faster loading
vim.loader.enable()

-- Editor UI
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 999
vim.opt.termguicolors = true
vim.opt.laststatus = 3
vim.opt.showmode = false

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

-- Search
vim.opt.ignorecase = true

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false

-- Clipboard
vim.opt.clipboard = "unnamedplus"
