local nvim_tree_config = require("nvim-tree.config")
local tree_cb = nvim_tree_config.nvim_tree_callback

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "l", cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" }, }
    }
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Navigate between NvimTree and file
keymap("n", "<C-h>", "<C-w><Left>", opts)
keymap("n", "<C-l>", "<C-w><Right>", opts)
