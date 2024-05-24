vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree_config = require("nvim-tree.config")
local tree_cb = nvim_tree_config.nvim_tree_callback

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h",                  cb = tree_cb "close_node" },
        { key = "v",                  cb = tree_cb "vsplit" }, }
    }
  },
})
