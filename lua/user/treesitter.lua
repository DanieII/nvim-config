require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "javascript"},
  ignore_install = { "" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "" },
  },
}
