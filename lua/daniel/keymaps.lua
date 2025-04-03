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

-- Nvim Tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)

-- LSP
vim.keymap.set("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
vim.keymap.set("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- Copilot
vim.keymap.set("i", "<C-y>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.keymap.set("i", "<C-\\>", "<Plug>(copilot-suggest)", opts)
vim.keymap.set("i", "<C-j>", "<Plug>(copilot-next)", opts)
vim.keymap.set("i", "<C-k>", "<Plug>(copilot-previous)", opts)
vim.keymap.set("n", "<leader>aa", ":CopilotChatToggle<CR>", opts)
vim.keymap.set("n", "<leader>ar", ":CopilotChatReset<CR>", opts)
vim.keymap.set("n", "<leader>as", ":CopilotChatStop<CR>", opts)
vim.keymap.set("n", "<leader>am", ":CopilotChatModels<CR>", opts)
vim.keymap.set("n", "<leader>ap", ":CopilotChatPrompts<CR>", opts)
vim.keymap.set("v", "<leader>ae", ":CopilotChatExplain<CR>", opts)
vim.keymap.set("v", "<leader>ao", ":CopilotChatOptimize<CR>", opts)
vim.keymap.set("v", "<leader>at", ":CopilotChatTest<CR>", opts)
vim.keymap.set("v", "<leader>ar", ":CopilotChatReview<CR>", opts)
vim.keymap.set("n", "<leader>ac", ":CopilotChatCommit<CR>", opts)
